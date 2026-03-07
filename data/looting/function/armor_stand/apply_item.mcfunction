# 

execute unless data entity @s equipment.mainhand.components.minecraft:custom_data.looting run return fail

execute if items entity @s weapon.mainhand *[custom_data~{looting:{tier:1b}}] run item modify entity @s weapon.mainhand looting:armor_stand/1
execute if items entity @s weapon.mainhand *[custom_data~{looting:{tier:2b}}] run item modify entity @s weapon.mainhand looting:armor_stand/2
execute if items entity @s weapon.mainhand *[custom_data~{looting:{tier:3b}}] run item modify entity @s weapon.mainhand looting:armor_stand/3
execute if items entity @s weapon.mainhand *[custom_data~{looting:{tier:4b}}] run item modify entity @s weapon.mainhand looting:armor_stand/4
execute if items entity @s weapon.mainhand *[custom_data~{looting:{tier:5b}}] run item modify entity @s weapon.mainhand looting:armor_stand/5
execute if items entity @s weapon.mainhand *[custom_data~{looting:{tier:9b}}] run item modify entity @s weapon.mainhand looting:armor_stand/9

execute if data entity @s equipment.mainhand.components.minecraft:custom_data.looting.lore run function util:for_array_fn {function:"looting:modifier/set_lore",data:"entity @s equipment.mainhand.components.minecraft:custom_data.looting.lore",for_id:1,start_index:0}

