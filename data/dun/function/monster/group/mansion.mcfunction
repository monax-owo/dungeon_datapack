# 

execute store result score #value dun.rand run random value 1..9

execute if score #value dun.rand matches 1..4 run function dun:monster/summon/evoker
execute if score #value dun.rand matches 5..8 run function dun:monster/summon/vindicator
execute if score #value dun.rand matches 9 run function dun:monster/summon/vex
