import fs from "node:fs/promises";
import path from "node:path";

import {
  DEFAULT_NAME,
  EQUIPMENTS_FILE_PATH,
  LOOT_TABLE_DIR,
  LOOT_TABLE_PATH,
  NAMESPACE,
  NORMAL_FILENAME,
} from "./env";

import {
  Item,
  ItemEntry,
  ItemsTable,
  LootTable,
  LootTableEntry,
} from "./types";
import { merge_functions, quality } from "./util";

export async function gen_equipment_loot_tables() {
  try {
    const table: ItemsTable = JSON.parse(
      await fs.readFile(EQUIPMENTS_FILE_PATH, "utf-8"),
    );

    const normal_pickup_loot_table: LootTable<LootTableEntry> = {
      pools: [{ rolls: 1, entries: [] }],
    };

    for (const v of table.items) {
      const loot_table = gen_equipment_loot_table(v, "equipments");
      if (!loot_table) continue;

      const file_path = path.join(
        LOOT_TABLE_DIR,
        "equipments",
        `${v.file_name}.json`,
      );

      await fs.mkdir(path.dirname(file_path), { recursive: true });

      await fs.writeFile(
        file_path,
        JSON.stringify(loot_table, null, 2),
        "utf-8",
      );

      normal_pickup_loot_table.pools[0].entries.push({
        type: "loot_table",
        value: `${NAMESPACE}:${LOOT_TABLE_PATH}/equipments/${v.file_name}`,
        weight: v.weight,
        ...(quality(v.tier) != 0 && { quality: quality(v.tier) }),
      });
    }

    await fs.mkdir(
      path.dirname(path.join(LOOT_TABLE_DIR, "gacha", NORMAL_FILENAME)),
      {
        recursive: true,
      },
    );

    await fs.writeFile(
      path.join(LOOT_TABLE_DIR, "gacha", NORMAL_FILENAME),
      JSON.stringify(normal_pickup_loot_table, null, 2),
      "utf-8",
    );

    console.log("Done");
  } catch (err) {
    console.error("Error:", err);
  }
}

function gen_equipment_loot_table(v: Item, namespace: string) {
  const { file_name, id, tier, price, name, lore, fn } = v;

  if (!tier || !price || !name) {
    console.log("Missing required fields at:", id);
    return;
  }

  const fmt_name =
    typeof name === "string" ? { text: name, color: "white" } : name;

  let data: LootTable<ItemEntry> = {
    pools: [
      {
        rolls: 1,
        entries: [
          {
            type: "minecraft:item",
            name: "minecraft:" + id,
            functions: [
              {
                function: "minecraft:set_components",
                components: {
                  "minecraft:custom_name": {
                    text: DEFAULT_NAME,
                    italic: false,
                  },
                  "minecraft:item_name": "",
                  "minecraft:rarity": "common",
                },
              },
              {
                function: "minecraft:set_custom_data",
                tag: {
                  looting: {
                    tier: tier,
                    name: fmt_name,
                  },
                  money: {
                    price,
                  },
                  loot_table: `${NAMESPACE}:${LOOT_TABLE_PATH}/${namespace}/${file_name}`,
                },
              },
            ],
          },
        ],
      },
    ],
  };

  if (lore && lore.length != 0 && lore[0] != "") {
    data.pools[0].entries[0].functions[1].tag.looting.lore = lore;
  }

  if (fn.length != 0) {
    data.pools[0].entries[0].functions =
      data.pools[0].entries[0].functions.concat(fn);
  }

  data = merge_functions(data);

  console.log("generate", id, "\n");

  return data;
}
