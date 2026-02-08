# {index,value,filter}

$execute unless data storage util: for_data_args_0.value.tier run data modify storage dun: chest.positions[$(index)].tier set value 1

$execute if data storage util: for_data_args_0.value{group:"$(filter)"} run data modify storage dun: _filtered_positions append from storage dun: chest.positions[$(index)]
