# {value, index, data: data, loot_table: string,output: data}

$data modify $(output) append value {buy:{},sell:{}}

$data modify storage util: args[0] merge from $(data)[$(index)].buy
$execute if data $(data)[$(index)].buy run function money:villager/buy with storage util: args[0]
$data modify storage util: args[0] merge from $(data)[$(index)].sell
$execute if data $(data)[$(index)].sell run function money:villager/sell with storage util: args[0]
