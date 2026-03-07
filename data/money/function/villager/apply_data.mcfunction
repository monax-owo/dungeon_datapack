# {value, index, data: data, loot_table: string,output: data}

$tellraw @a[tag=debug] ["$(data) $(index) $(output)"]

$data modify $(output) append value {buy:{},sell:{}}

$execute if data $(data)[$(index)].buy run data modify storage util: args[-1] merge from $(data)[$(index)].buy
$execute if data $(data)[$(index)].buy run function money:villager/buy with storage util: args[-1]

$execute if data $(data)[$(index)].sell run data modify storage util: args[-1] merge from $(data)[$(index)].sell
$execute if data $(data)[$(index)].sell run function money:villager/sell with storage util: args[-1]
