# 

summon creeper ~ ~ ~ {Tags:["dun","summon"],DeathLootTable:"dun:item/zako"}

data modify storage calc: health set from entity @n[tag=summon,type=creeper] Health
function dun:monster/set_health

tag @n[tag=summon,type=creeper] remove summon
