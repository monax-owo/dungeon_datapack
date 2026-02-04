import fs from "node:fs/promises";
import path from "node:path";

const ROOT_DIR = "../";
const LOOT_TABLE_PATH = "gen";
const NAMESPACE = "dun";

const LOOT_TABLE_DIR = path.join(
  ROOT_DIR,
  `data/${NAMESPACE}/loot_table`,
  LOOT_TABLE_PATH,
);
const ITEMS_FILE_PATH = "items.json";
const PICKUP_FILENAME = "pickup.json";
const DEFAULT_NAME = "?????";

interface Item {
  file_name: string;
  id: string;
  tier: number;
  price: number;
  weight: number;
  name: string;
  lore?: (string | object)[];
  fn: object[];
}

interface ItemsTable {
  items: Item[];
}

interface LootTable<T> {
  pools: {
    rolls: number;
    entries: T[];
  }[];
}

interface ItemEntry {
  type: string;
  name: string;
  functions: any[];
  weight?: number;
  quality?: number;
}

interface LootTableEntry {
  type: string;
  value: string;
  weight?: number;
  quality?: number;
}

async function main() {
  try {
    const table: ItemsTable = JSON.parse(
      await fs.readFile(ITEMS_FILE_PATH, "utf-8"),
    );

    const pickup_loot_table: LootTable<LootTableEntry> = {
      pools: [{ rolls: 1, entries: [] }],
    };

    for (const v of table.items) {
      const loot_table = genLt(v);
      if (!loot_table) continue;

      const file_path = path.join(
        LOOT_TABLE_DIR,
        "items",
        `${v.file_name}.json`,
      );

      await fs.mkdir(path.dirname(file_path), { recursive: true });

      await fs.writeFile(
        file_path,
        JSON.stringify(loot_table, null, 2),
        "utf-8",
      );

      pickup_loot_table.pools[0].entries.push({
        type: "loot_table",
        value: `${NAMESPACE}:${LOOT_TABLE_PATH}/items/${v.file_name}`,
        weight: v.weight,
        quality: 1,
      });
    }

    await fs.writeFile(
      path.join(LOOT_TABLE_DIR, PICKUP_FILENAME),
      JSON.stringify(pickup_loot_table, null, 2),
      "utf-8",
    );

    console.log("Done");
  } catch (err) {
    console.error("Error:", err);
  }
}

function genLt(v: Item) {
  const { file_name, id, tier, price, weight, name, lore, fn } = v;
  console.log(id);

  if (!id || !tier || !price || !name) {
    console.log("Missing required fields");
    return;
  }

  const data: LootTable<ItemEntry> = {
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
                  "minecraft:custom_data": {
                    looting: {
                      tier: tier,
                      price,
                      name: { text: name, color: "white" },
                    },
                    loot_table: `${NAMESPACE}:${LOOT_TABLE_PATH}/items/${file_name}`,
                  },
                  "minecraft:custom_name": {
                    text: DEFAULT_NAME,
                    italic: false,
                  },
                  "minecraft:item_name": "",
                  "minecraft:rarity": "common",
                },
              },
            ],
          },
        ],
      },
    ],
  };

  if (lore.length != 0 && lore[0] != "") {
    data.pools[0].entries[0].functions[0].components[
      "minecraft:custom_data"
    ].looting.lore = lore;
  }

  if (fn.length != 0) {
    data.pools[0].entries[0].functions =
      data.pools[0].entries[0].functions.concat(fn);
    console.log(fn);
  }

  return data;
}

main();
