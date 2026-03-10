# 

summon husk ~ ~ ~ {Tags:["dun","summon"],DeathLootTable:"dun:item/zako"}

function dun:monster/apply_equipments

data modify storage calc: health set from entity @n[tag=summon,type=husk] Health
function dun:monster/set_health

tag @n[tag=summon,type=husk] remove summon
