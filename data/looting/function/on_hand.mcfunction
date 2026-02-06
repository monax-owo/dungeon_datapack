# 

advancement revoke @s only looting:on_hand

execute if data entity @s SelectedItem.components."minecraft:custom_data".looting{searched:true} run return fail

function looting:apply_item