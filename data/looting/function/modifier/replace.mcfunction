# {loot_table}

$loot replace entity @s weapon.mainhand loot $(loot_table)
item modify entity @s weapon.mainhand {function:"set_custom_data",tag:{looting:{silent:true}}}
