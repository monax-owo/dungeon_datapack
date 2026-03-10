# 

summon guardian ~ ~ ~ {Tags:["dun","summon"],DeathLootTable:"dun:item/zako"}

data modify storage calc: health set from entity @n[tag=summon,type=guardian] Health
function dun:monster/set_health

tag @n[tag=summon,type=guardian] remove summon
