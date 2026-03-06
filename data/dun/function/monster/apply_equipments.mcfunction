# 

function dun:monster/_equipment
execute if data storage dun: _monster.equipment run data modify entity @n[tag=summon] equipment merge from storage dun: _monster.equipment
function dun:monster/_clear_drop_chance
data remove storage dun: _monster.equipment
