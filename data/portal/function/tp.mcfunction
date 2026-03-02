# {pos: position, rotation: rotation, dimension: string, distance: int}

$execute unless data storage portal: dimensions[{id:"$(dimension)"}] run return 0

execute unless data entity @s data.portal.rotation run data modify entity @s data.portal.rotation set value "~ ~"
data modify storage portal: _temp set from entity @s data.portal

$execute as @p[distance=..$(distance)] run function portal:_tp with storage portal: _temp

# clear
data remove storage portal: _temp
