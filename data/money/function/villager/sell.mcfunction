# {loot_table: string,output: data}

$loot replace entity @n[tag=money.villager.manager] weapon.mainhand loot $(loot_table)
execute as @n[tag=money.villager.manager] run function looting:apply_item

$data modify $(output)[-1].sell set from entity @n[tag=money.villager.manager] equipment.mainhand
$data modify $(output)[-1].sell.count set from $(data)[$(index)].sell.count

data remove entity @n[tag=money.villager.manager] equipment.mainhand
