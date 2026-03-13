# 

execute unless predicate {condition:"random_chance",chance:.1} run return 0

execute store result storage looting: fake.count int 1 run data get entity @s SelectedItem.count

execute store result score #rand util run random value 1..10
execute if score #rand util matches 1..9 run loot replace entity @s weapon.mainhand loot dun:gen/pickup/normal
execute if score #rand util matches 10 run loot replace entity @s weapon.mainhand loot dun:gen/pickup/rare

item modify entity @s weapon.mainhand {function:"set_count",count:{type:"storage",storage:"looting:",path:"fake.count"}}
item modify entity @s weapon.mainhand {function:"set_custom_data",tag:{looting:{fakeable:false}}}

scoreboard players set #tier util 1
execute store result score #tier util run data get entity @s SelectedItem.components.minecraft:custom_data.looting.tier
execute if score #tier util matches 1..3 run tellraw @s ["偽物だった…"]
execute if score #tier util matches 4.. run tellraw @s ["偽物だけど高そうだ"]

function looting:apply_item

# clear
data remove storage looting: fake
scoreboard players reset #rand util
scoreboard players reset #tier util
return 1
