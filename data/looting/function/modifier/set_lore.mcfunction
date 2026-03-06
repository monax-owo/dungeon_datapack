# {index, value}

$data modify storage looting: item_modifier.lore set from storage looting: temp.components.minecraft:custom_data.looting.lore[$(index)]

item modify entity @s weapon.mainhand looting:lore

# clean
data remove storage looting: item_modifier.lore
