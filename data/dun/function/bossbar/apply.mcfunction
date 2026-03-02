# 

scoreboard players add #index bossbar.id 1
scoreboard players operation @s bossbar.id = #index bossbar.id

execute store result storage boss: _summon.id int 1 run scoreboard players get #index bossbar.id
execute if data entity @s CustomName run data modify storage boss: _summon.name set from entity @s CustomName
execute unless data entity @s CustomName run data modify storage boss: _summon.name set value ""

execute store result storage boss: _summon.health int 1 run data get entity @s Health

data modify storage boss: targets append from storage boss: _summon.id
tellraw @a[team=admin,tag=debug] {storage:"boss:",nbt:"_summon"}
function dun:bossbar/_add_bossbar with storage boss: _summon

# clear
data remove storage boss: _summon
tag @s remove boss.summoning
