# {command, data, index, for_id}

$execute unless data $(data)[$(index)] run return 0
$say $(index)

$data modify storage util: temp set from $(data)[$(index)]
$tellraw @a[tag=debug] ["$(index)",{storage:"util:",nbt:"temp"}]

execute if data storage util: args[-1].value{} if data storage util: temp{} run say if
execute if data storage util: args[-1].value{} if data storage util: temp{} run data modify storage util: args[-1].value merge from storage util: temp
execute unless data storage util: args[-1].value{} unless data storage util: temp{} run say un
execute unless data storage util: args[-1].value{} unless data storage util: temp{} run data modify storage util: args[-1].value set from storage util: temp

data remove storage util: temp.command
data remove storage util: temp.data
data remove storage util: temp.index
data remove storage util: temp.for_id
data modify storage util: args[-1] merge from storage util: temp

tellraw @a[tag=debug] ["args[-1]: ",{storage:"util:",nbt:"args[-1]"}]

$$(command)

# TODO: for_idいらない
#       for_array側で入れ子の回数数える
# increment
$scoreboard players add #index.$(for_id) for.index 1
$execute store result storage util: args[-1].index int 1 run scoreboard players get #index.$(for_id) for.index
tellraw @a[tag=debug] ["----------------"]

function util:_for/_array_inner with storage util: args[-1]
