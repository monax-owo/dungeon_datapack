# {command, data, index, for_id}

$execute unless data $(data)[$(index)] run return 0

tellraw @a[tag=debug] ["----------------"]

$data modify storage util: args[-1] merge from $(data)[$(index)]
data modify storage util: args[-1] merge from storage util: arg
$data modify storage util: args[-1].value set from $(data)[$(index)]

# tellraw @a[tag=debug] [{storage:"util:",nbt:"args[-1]"}]

$$(command)

# TODO: for_idいらない
#       for_array側で入れ子の回数数える
# increment
$scoreboard players add #index.$(for_id) for.index 1
$execute store result storage util: args[-1].index int 1 run scoreboard players get #index.$(for_id) for.index

function util:_for/_array_inner with storage util: args[-1]
