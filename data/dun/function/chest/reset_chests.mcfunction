# {group: string}

$execute unless data storage dun: groups[{id:"$(group)"}] run return 0

# TODO:
$data modify storage util: args[0].filter set value "$(group)"

function util:for_array {command:"function dun:chest/reset/_filter with storage util: args[0]", data:"storage dun: chest.positions", for_id:0, start_index: 0}

execute if data storage dun: _filtered_positions run function util:for_array {command:"function dun:chest/reset/_modify_loot_table with storage util: args[0]", data:"storage dun: _filtered_positions", for_id:0, start_index: 0}

tellraw @a[team=admin,tag=debug] ["success: ",{score:{name:"#count",objective:"chest"}}]

# clear
data remove storage dun: _filtered_positions
scoreboard players set #count chest 0
