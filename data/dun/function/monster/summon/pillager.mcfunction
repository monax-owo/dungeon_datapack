# 

summon pillager ~ ~ ~ {Tags:["dun","summon"],DeathLootTable:"dun:item/zakohito"}

data modify entity @n[tag=summon,type=pillager] equipment merge value {mainhand:{id:"crossbow"},offhand:{id:"tipped_arrow",components:{item_model:"air"}}}

function dun:monster/_clear_drop_chance

data modify storage calc: health set from entity @n[tag=summon,type=pillager] Health
function dun:monster/set_health

tag @n[tag=summon,type=pillager] remove summon
