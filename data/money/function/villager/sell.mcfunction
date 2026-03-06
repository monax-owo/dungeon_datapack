# {loot_table: string,output: data}

$loot replace entity @n[tag=money.villager.manager] weapon.mainhand loot $(loot_table)

$data modify $(output)[-1].sell set from entity @n[tag=money.villager.manager] equipment.mainhand
$data modify $(output)[-1].sell.count set from $(data)[$(index)].sell.count

data remove entity @n[tag=money.villager.manager] equipment.mainhand
