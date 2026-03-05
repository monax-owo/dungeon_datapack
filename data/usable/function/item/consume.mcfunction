# 

execute unless data entity @s SelectedItem.components.minecraft:custom_data.usable run return 0

data modify storage usable: args set from entity @s SelectedItem.components.minecraft:custom_data.usable
tellraw @s {entity:"@s",nbt:"SelectedItem.components.minecraft:custom_data"}
execute unless data storage usable: args.loot_table run data modify storage usable: args.loot_table set value "{}"
execute unless data storage usable: args.command run data modify storage usable: args.command set value "return 0"

function usable:item/_replace with storage usable: args

# clear
advancement revoke @s only usable:consume
data remove storage usable: args
