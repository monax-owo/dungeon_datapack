# 

summon breeze ~ ~ ~ {Tags:["dun","summon"]}

data modify storage calc: health set from entity @n[tag=summon] Health
function dun:monster/set_health

tag @e[type=breeze,sort=nearest,limit=1] remove summon