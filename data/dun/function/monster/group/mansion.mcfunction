# 

execute store result score #value _rand run random value 1..9

execute if score #value _rand matches 1..4 run function dun:monster/summon/evoker
execute if score #value _rand matches 5..8 run function dun:monster/summon/vindicator
execute if score #value _rand matches 9 run function dun:monster/summon/vex
