# {command, data, index, for_id}

# TODO: bug
$execute if data storage util: args[-1].value run data modify storage util: args[-1].value merge from $(data)[$(index)]
$execute unless data storage util: args[-1].value run data modify storage util: args[-1].value set from $(data)[$(index)]

$data modify storage util: args[-1] merge from $(data)[$(index)]

$$(command)

# increment
$scoreboard players add #index.$(for_id) for.index 1
$execute store result storage util: args[-1].index int 1 run scoreboard players get #index.$(for_id) for.index

$execute if data $(data)[$(index)] run function util:_for/_data_inner with storage util: args[-1]
