# {size: int}
$summon slime ~ ~ ~ {Tags:["dun","summon"],Size:$(size)}

data modify storage calc: health set from entity @n[tag=summon] Health
function dun:monster/set_health

tag @n[tag=summon] remove summon
