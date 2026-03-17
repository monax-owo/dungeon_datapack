import { gen_item_loot_tables } from "./items";
import { gen_equipment_loot_tables } from "./equipments";

(async function () {
  await gen_item_loot_tables();
  // await gen_equipment_loot_tables();
})();
