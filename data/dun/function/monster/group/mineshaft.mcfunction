# 

execute store result score #value dun.rand run random value 1..35

execute if score #value dun.rand matches 1..10 run function dun:monster/summon/zombie
execute if score #value dun.rand matches 11..20 run function dun:monster/summon/skeleton
execute if score #value dun.rand matches 21..30 run function dun:monster/summon/creeper
execute if score #value dun.rand matches 31..35 run function dun:monster/summon/spider
