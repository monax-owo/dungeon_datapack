# 

summon evoker ~ ~ ~ {Tags:["dun","summon"],DeathLootTable:"dun:item/zakohito"}

function dun:monster/_clear_drop_chance

data modify storage calc: health set from entity @n[tag=summon,type=evoker] Health
function dun:monster/set_health

tag @n[tag=summon,type=evoker] remove summon
