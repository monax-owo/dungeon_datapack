# {index,value,filter}

$execute if data storage util: args[-1].value{group:"$(filter)"} run data modify storage dun: _filtered_positions append from storage dun: chest.positions[$(index)]
