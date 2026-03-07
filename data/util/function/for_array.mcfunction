# {command, data, for_id, start_index: int}

$execute unless data $(data)[$(start_index)] run return 0

# init
$scoreboard players set #index.$(for_id) for.index $(start_index)
$data modify storage util: args append value {command:"$(command)",data:"$(data)",for_id:"$(for_id)",index:$(start_index),value:{}}

function util:_for/_array_inner with storage util: args[-1]

# clear args
$scoreboard players reset #index.$(for_id) for.index
data remove storage util: args[-1]
data remove storage util: arg
