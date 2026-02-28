# 

execute store result score #value _rand run random value 0..2

execute if score #value _rand matches 0 run function dun:monster/summon/zombie
execute if score #value _rand matches 1 run function dun:monster/summon/skeleton
execute if score #value _rand matches 2 run function dun:monster/summon/creeper