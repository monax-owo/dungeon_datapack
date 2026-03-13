# 

execute store result score #value dun.rand run random value 1..2

execute if score #value dun.rand matches 1..2 run function dun:monster/summon/pillager

scoreboard players reset #value dun.rand
