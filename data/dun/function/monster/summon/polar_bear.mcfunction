# 

summon polar_bear ~ ~ ~ {Tags:["dun","summon"],DeathLootTable:"dun:item/zako"}

data modify storage calc: health set from entity @n[tag=summon] Health
function dun:monster/set_health

tag @n[tag=summon] remove summon
