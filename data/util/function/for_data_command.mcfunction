# {command, data, for_id, start_index: int}

$execute unless data $(data)[$(start_index)] run return fail

# init
$scoreboard objectives add for_data_temp_$(for_id) dummy
$scoreboard players set #index for_data_temp_$(for_id) $(start_index)

# init args
$data modify storage util: args_$(for_id).command set value "$(command)"
$data modify storage util: args_$(for_id).data set value "$(data)"
$data modify storage util: args_$(for_id).for_id set value "$(for_id)"
$data modify storage util: args_$(for_id).index set value $(start_index)

$function util:_for/_data_inner with storage util: args_$(for_id)

# clear args
$scoreboard objectives remove for_data_temp_$(for_id)
$data remove storage util: args_$(for_id)
