# 

execute store result score #value _rand run random value 1..50

execute if score #value _rand matches 1..10 run function dun:monster/summon/husk
execute if score #value _rand matches 11..20 run function dun:monster/summon/skeleton
execute if score #value _rand matches 21..30 run function dun:monster/summon/creeper
execute if score #value _rand matches 31..35 run function dun:monster/summon/spider
