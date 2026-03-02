# 

execute store result score #value _rand run random value 0..6

execute if score #value _rand matches 0 run function dun:monster/summon/zombie
execute if score #value _rand matches 1 run function dun:monster/summon/skeleton
execute if score #value _rand matches 2 run function dun:monster/summon/creeper
execute if score #value _rand matches 3 run function dun:monster/summon/spider
execute if score #value _rand matches 4 run function dun:monster/summon/stray
execute if score #value _rand matches 5 run function dun:monster/summon/polar_bear
execute if score #value _rand matches 6 run function dun:monster/summon/breeze
