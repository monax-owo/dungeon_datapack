# 

execute unless items entity @s weapon.mainhand *[custom_data~{looting:{}}] run return fail
item modify entity @s weapon.mainhand {function:"set_custom_data",tag:{looting:{searched:true}}}

execute if entity @s[type=player] run data modify storage looting: temp set from entity @s SelectedItem
execute if entity @s[type=armor_stand] run data modify storage looting: temp set from entity @s equipment.mainhand

execute if items entity @s weapon.mainhand *[custom_data~{looting:{tier:1b}}] run item modify entity @s weapon.mainhand looting:1
execute if items entity @s weapon.mainhand *[custom_data~{looting:{tier:2b}}] run item modify entity @s weapon.mainhand looting:2
execute if items entity @s weapon.mainhand *[custom_data~{looting:{tier:3b}}] run item modify entity @s weapon.mainhand looting:3
execute if items entity @s weapon.mainhand *[custom_data~{looting:{tier:4b}}] run item modify entity @s weapon.mainhand looting:4
execute if items entity @s weapon.mainhand *[custom_data~{looting:{tier:5b}}] run item modify entity @s weapon.mainhand looting:5
execute if items entity @s weapon.mainhand *[custom_data~{looting:{tier:9b}}] run item modify entity @s weapon.mainhand looting:9

execute if data storage looting: temp.components."minecraft:custom_data".looting.lore run function util:for_array_fn {function:"looting:modifier/set_lore",data:"storage looting: temp.components.minecraft:custom_data.looting.lore",for_id:0,start_index:0}
execute if data storage looting: temp.components."minecraft:custom_data".looting.replace run function looting:modifier/replace with storage looting: temp.components."minecraft:custom_data".looting.replace

execute if items entity @s weapon.mainhand *[custom_data~{looting:{silent:true}}] run return 0
playsound minecraft:entity.item.pickup master @s ~ ~ ~ 0.2 2
tellraw @s {entity:"@s",nbt:"SelectedItem.components.minecraft:custom_name",interpret:true}
