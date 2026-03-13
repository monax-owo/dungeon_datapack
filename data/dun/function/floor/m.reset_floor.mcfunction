# {index, id, reset: boolean}

$execute unless data storage dun: floor.reset[{id:"$(id)",reset:true}] run return fail
$data modify storage tmp: dun.floor.reset.group set from storage dun: floor.reset[{id:"$(id)"}].id

$tellraw @a[team=admin,tag=debug] ["$(index) ",{storage:"dun:",nbt:"floor.reset[{id:'$(id)'}]"}]

function dun:chest/reset_chests with storage tmp: dun.floor.reset
function dun:monster/reset_group with storage tmp: dun.floor.reset

# clear
data remove storage tmp: dun.floor.reset
$data remove storage dun: floor.reset[{id:"$(id)"}]
