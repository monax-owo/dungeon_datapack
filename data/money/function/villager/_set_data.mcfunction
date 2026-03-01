# {loot_table: string,output: data}

$loot replace entity @n[tag=money.villager.manager] weapon.mainhand loot $(loot_table)
$data modify $(output) append from entity @n[tag=money.villager.manager] equipment.mainhand
data remove entity @n[tag=money.villager.manager] equipment.mainhand
