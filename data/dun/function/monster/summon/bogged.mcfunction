# 

summon bogged ~ ~ ~ {Tags:["dun","summon"],DeathLootTable:"dun:item/zako"}

function dun:monster/apply_equipments

data modify entity @n[tag=summon] equipment.mainhand set value {id:"bow"}

data modify storage calc: health set from entity @n[tag=summon] Health
function dun:monster/set_health

tag @n[tag=summon] remove summon
