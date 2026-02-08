# {pos: position, group: string, tier: int}

$execute unless data storage dun: groups[{id:"$(group)"}] run return 0

$execute if data storage dun: chest.positions[{pos:"$(pos)"}] run return -1

$execute if block $(pos) #util:can_loot_table run data modify storage dun: _checked set value true
execute unless data storage dun: {_checked:true} run return -2

$scoreboard players set #tier chest $(tier)
execute unless score #tier chest matches 1..5 run return -3

$execute unless data storage dun: chest.positions[{pos:"$(pos)"}] run tellraw @a[team=admin,tag=debug] added
$data modify storage dun: chest.positions append value {pos:"$(pos)",group:$(group),tier:$(tier)}

# clear
data remove storage dun: _checked
