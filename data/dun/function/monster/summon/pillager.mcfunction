# 

summon pillager ~ ~ ~ {Tags:["dun","summon"]}

data modify entity @n[tag=summon] equipment merge value {mainhand:{id:"crossbow"},offhand:{id:"tipped_arrow",components:{item_model:"air"}}}

function dun:monster/_clear_drop_chance

data modify storage calc: health set from entity @n[tag=summon] Health
function dun:monster/set_health

tag @n[tag=summon] remove summon
