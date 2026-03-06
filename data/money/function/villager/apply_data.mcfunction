# {value, index, data: data, loot_table: string,output: data}

$data modify $(output) append value {buy:{},sell:{}}

$data modify storage util: args[0].loot_table set from $(data)[$(index)].buy.loot_table
$execute if data $(data)[$(index)].buy run function money:villager/buy with storage util: args[0]
$data modify storage util: args[0].loot_table set from $(data)[$(index)].sell.loot_table
$execute if data $(data)[$(index)].sell run function money:villager/sell with storage util: args[0]
