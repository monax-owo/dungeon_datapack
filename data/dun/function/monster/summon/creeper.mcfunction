# 

summon creeper ~ ~ ~ {Tags:["dun","summon"]}

data modify storage calc: health set from entity @n[tag=summon] Health
function dun:monster/set_health

tag @e[tag=summon,sort=nearest,limit=1] remove summon