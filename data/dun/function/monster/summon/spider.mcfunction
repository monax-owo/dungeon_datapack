# 

summon spider ~ ~ ~ {Tags:["dun","summon"],DeathLootTable:"dun:item/zako"}

execute store result score #passenger dun.rand run random value 1..300

execute if score #passenger dun.rand matches 1 run function dun:monster/summon/skeleton
execute if score #passenger dun.rand matches 2 run function dun:monster/summon/stray
execute if score #passenger dun.rand matches 3 run function dun:monster/summon/slime

execute if score #passenger dun.rand matches 1..3 run ride @n[tag=dun,type=!spider,distance=0] mount @n[tag=summon,type=spider]

data modify storage calc: health set from entity @n[tag=summon,type=spider] Health
function dun:monster/set_health

tag @n[tag=summon,type=spider] remove summon
scoreboard players reset #passenger dun.rand
