# {command, data, index, for_id}

$execute unless data $(data)[$(index)] run return 0

data modify storage util: temp set from storage util: args[-1]
$data modify storage util: args[-1].value set from $(data)[$(index)]
$data modify storage util: args[-1] merge from $(data)[$(index)]
data modify storage util: args[-1] merge from storage util: args[-1].args
data modify storage util: args[-1] merge from storage util: temp

tellraw @a[tag=debug] ["args[-1]: ",{storage:"util:",nbt:"args"}]

$$(command)

# TODO: for_idいらない
#       for_array側で入れ子の回数数える
# increment
$scoreboard players add #index.$(for_id) for.index 1
$execute store result storage util: args[-1].index int 1 run scoreboard players get #index.$(for_id) for.index
# tellraw @a[tag=debug] ["----------------"]

data remove storage util: temp

function util:_for/_array_inner with storage util: args[-1]
