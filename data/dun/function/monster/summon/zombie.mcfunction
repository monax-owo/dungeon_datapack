# 

summon zombie ~ ~ ~ {Tags:["dun","summon"]}

function dun:monster/_equipment
execute if data storage dun: _monster.equipment run data modify entity @n[tag=summon] equipment merge from storage dun: _monster.equipment
data remove storage dun: _monster.equipment

data modify storage calc: health set from entity @n[tag=summon] Health
function dun:monster/set_health

tag @n[tag=summon] remove summon
