# {command, data, for_id, start_index: int}

$execute unless data $(data)[$(start_index)] run return fail

# init
$scoreboard players set #index.$(for_id) for.index $(start_index)
$data modify storage util: args append value {command:"$(command)",data:"$(data)",for_id:"$(for_id)",index:$(start_index)}

function util:_for/_data_inner with storage util: args[-1]

# clear args
$scoreboard players reset #index.$(for_id) for.index
# ok?
data remove storage util: args[-1]
