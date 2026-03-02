# {loot_table: string,output: data}

$loot replace entity @n[tag=money.villager.manager] weapon.mainhand loot $(loot_table)
$data modify $(output) append value {sell:{}}
$data modify $(output)[-1].sell set from entity @n[tag=money.villager.manager] equipment.mainhand
data remove entity @n[tag=money.villager.manager] equipment.mainhand
