# {loot_table: string,output: data}
# $say loot_table: $(loot_table) output: $(output) data: $(data) index: $(index)

$loot replace entity @n[tag=money.villager.manager] weapon.mainhand loot $(loot_table)
execute as @n[tag=money.villager.manager] if items entity @s weapon.mainhand *[custom_data~{looting:{}}] run function looting:armor_stand/apply_item_armor_stand

$data modify $(output)[-1].buy set from entity @n[tag=money.villager.manager] equipment.mainhand
$data modify $(output)[-1].buy.count set from $(data)[$(index)].buy.count

data remove entity @n[tag=money.villager.manager] equipment.mainhand
