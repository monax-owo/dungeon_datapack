# {index,value,filter}

# $say $(index) $(filter)

$execute unless data storage util: args[-1].value.tier run data modify storage dun: chest.positions[$(index)].tier set value 1

$execute if data storage util: args[-1].value{group:"$(filter)"} run data modify storage dun: _filtered_positions append from storage dun: chest.positions[$(index)]
