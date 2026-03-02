# 

function dun:monster/calc_health

data modify storage dun: _monster.attributes set value {id:"minecraft:max_health"}
data modify storage dun: _monster.attributes.base set from storage calc: final_health

data modify entity @n[tag=summon] attributes append from storage dun: _monster.attributes
data modify entity @n[tag=summon] Health set from storage calc: final_health
