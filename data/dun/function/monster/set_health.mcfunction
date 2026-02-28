# 

function dun:monster/calc_health

data modify entity @n[tag=summon] attributes[-1] set value {id:max_health}
data modify entity @n[tag=summon] attributes[-1].base set from storage calc: final_health
data modify entity @n[tag=summon] Health set from storage calc: final_health
