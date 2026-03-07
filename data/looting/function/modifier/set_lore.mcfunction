# {index, value}

$data modify storage looting: item_modifier.lore set value "$(value)"

item modify entity @s weapon.mainhand looting:lore

# clean
data remove storage looting: item_modifier.lore
