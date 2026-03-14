import * as es from "es-toolkit";

import { ItemEntry, LootTable, LootTableFunction } from "./types";

export function merge_functions(data: LootTable<ItemEntry>) {
  const map: Map<string, LootTableFunction> = new Map();

  for (const entry of data.pools[0].entries[0].functions) {
    console.log(entry.function);

    if (
      entry.function === "minecraft:set_components" ||
      entry.function === "set_components"
    ) {
      map.set("minecraft:set_components", {
        function: "minecraft:set_components",
        components: es.merge(
          map.get("minecraft:set_components")?.components ?? {},
          entry.components ?? {},
        ),
      });
    } else if (
      entry.function === "minecraft:set_custom_data" ||
      entry.function === "set_custom_data"
    ) {
      map.set("minecraft:set_custom_data", {
        function: "minecraft:set_custom_data",
        tag: es.merge(
          map.get("minecraft:set_custom_data")?.tag ?? {},
          entry.tag ?? {},
        ),
      });
    } else {
      map.set(
        entry.function.startsWith("minecraft:")
          ? entry.function
          : "minecraft:" + entry.function,
        {
          ...map.get(entry.function),
          ...entry,
          function: entry.function,
        },
      );
    }
  }

  let out = data;
  out.pools[0].entries[0].functions = map.values().toArray();

  console.log(JSON.stringify(map.values().toArray()));

  return out;
}

export function quality(n: number): number {
  const table: number[] = [-10, -10, -1, 1000, 10000, 0, 0, 0, -1];
  if (n > table.length) throw Error("n: " + n);
  // return table[n - 1];
  return 0;
}
