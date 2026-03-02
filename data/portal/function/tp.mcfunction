# {pos: position, rotation: rotation, dimension: string, distance: int, predicate: command}

$execute unless data storage portal: dimensions[{id:"$(dimension)"}] run return 0

execute if data entity @s data.portal{pos:"~ ~ ~"} run return -1

$execute store success score #value flag.flag run $(predicate)
execute if score #value flag.flag matches 0 run return -2

execute unless data entity @s data.portal.rotation run data modify entity @s data.portal.rotation set value "~ ~"
execute unless data entity @s data.portal.rotation run data modify entity @s data.portal.rotation set value "~ ~"
data modify storage portal: _temp set from entity @s data.portal

$execute as @p[distance=..$(distance)] rotated as @s positioned as @s run function portal:_tp with storage portal: _temp

# clear
data remove storage portal: _temp
