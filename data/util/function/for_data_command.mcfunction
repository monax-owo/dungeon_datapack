# {command, data, for_id, start_index: int}

$execute unless data $(data)[$(start_index)] run return fail

# init
$scoreboard players set #index.$(for_id) for_data_temp $(start_index)

# init args
data modify storage util: args append value {}
# TODO: ref
$data modify storage util: args[-1].command set value "$(command)"
$data modify storage util: args[-1].data set value "$(data)"
$data modify storage util: args[-1].for_id set value "$(for_id)"
$data modify storage util: args[-1].index set value $(start_index)

function util:_for/_data_inner with storage util: args[-1]

# clear args
$scoreboard players reset #index.$(for_id) for_data_temp
# ok?
data remove storage util: args[0]
