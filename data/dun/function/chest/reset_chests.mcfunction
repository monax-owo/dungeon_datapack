# {group: string}

$execute unless data storage dun: groups[{id:"$(group)"}] run return 0

$data modify storage util: arg.filter set value "$(group)"
function util:for_array {command:"function dun:chest/reset/_filter with storage util: args[-1]", data:"storage dun: chest.positions", for_id:0, start_index: 0}
tellraw @a[tag=debug] [{storage:"dun:",nbt:"_filtered_positions"}]
execute if data storage dun: _filtered_positions run function util:for_array {command:"function dun:chest/reset/_modify_loot_table with storage util: args[-1]", data:"storage dun: _filtered_positions", for_id:0, start_index: 0}

tellraw @a[tag=debug] ["success: ",{score:{name:"#count",objective:"chest"}}]

# clear
data remove storage dun: _filtered_positions
scoreboard players set #count chest 0
