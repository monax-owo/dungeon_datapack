# 

summon slime ~ ~ ~ {Tags:["dun","summon"],DeathLootTable:"dun:item/zako"}

execute store result entity @n[tag=summon] Size int 1 run random value 0..3

data modify storage calc: health set from entity @n[tag=summon] Health
function dun:monster/set_health

tag @n[tag=summon] remove summon
