# 

execute store result score #value dun.rand run random value 1..20

execute if score #value dun.rand matches 1..10 run function dun:monster/summon/evoker
execute if score #value dun.rand matches 11..20 run function dun:monster/summon/vindicator
