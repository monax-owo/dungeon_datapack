# {command, data, index, for_id}

# TODO: bug
$execute if data storage util: args_$(for_id).value run data modify storage util: args_$(for_id).value merge from $(data)[$(index)]
$execute unless data storage util: args_$(for_id).value run data modify storage util: args_$(for_id).value set from $(data)[$(index)]

$data modify storage util: args_$(for_id) merge from $(data)[$(index)]

$$(command)

# debug
# $tellraw @a {score: {name:"#index", objective: "for_data_temp_$(for_id)"}}
# $tellraw @a {storage: "util:", nbt: "args_$(for_id).index"}

# increment
$scoreboard players add #index for_data_temp_$(for_id) 1
$execute store result storage util: args_$(for_id).index int 1 run scoreboard players get #index for_data_temp_$(for_id)

$function util:_for/_data_inner_next with storage util: args_$(for_id)
