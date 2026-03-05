# {loot_table, command}

$execute unless data storage usable: args{loot_table:"{}"} if data storage usable: args{mode:"give"} run loot give @s loot $(loot_table)
item replace entity @s weapon.mainhand with air
$execute unless data storage usable: args{loot_table:"{}"} unless data storage usable: args{mode:"give"} run loot replace entity @s weapon.mainhand loot $(loot_table)
execute if data entity @s SelectedItem.components.minecraft:custom_data.looting run item modify entity @s weapon.mainhand {function:"set_custom_data",tag:{looting:{searched:true}}}
function looting:apply_item

$$(command)
