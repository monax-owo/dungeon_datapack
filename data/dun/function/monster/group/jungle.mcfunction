# 


execute store result score #value _rand run random value 0..50

execute if score #value _rand matches 0..9 run function dun:monster/summon/pillager
execute if score #value _rand matches 10..14 run function dun:monster/summon/bogged
execute if score #value _rand matches 15..24 run function dun:monster/summon/skeleton
execute if score #value _rand matches 25..34 run function dun:monster/summon/zombie
