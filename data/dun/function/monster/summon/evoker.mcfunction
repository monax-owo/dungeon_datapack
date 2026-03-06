# 

summon evoker ~ ~ ~ {Tags:["dun","summon"]}

function dun:monster/_clear_drop_chance

data modify storage calc: health set from entity @n[tag=summon] Health
function dun:monster/set_health

tag @n[tag=summon] remove summon
