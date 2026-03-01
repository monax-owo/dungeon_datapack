# 

summon polar_bear ~ ~ ~ {Tags:["dun","summon"]}

data modify storage calc: health set from entity @n[tag=summon] Health
function dun:monster/set_health

tag @n[tag=summon] remove summon
