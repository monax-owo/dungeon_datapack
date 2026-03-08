# {pos: position, rotation: rotation, dimension: string, distance: int, command: command}

$execute unless entity @p[distance=..$(distance)] run return -1
$execute unless data storage portal: dimensions[{id:"$(dimension)"}] run return 0

execute if data entity @s data.portal{pos:"~ ~ ~"} run return -2

execute unless data entity @s data.portal.rotation run data modify entity @s data.portal.rotation set value "~ ~"
data modify storage portal: _temp set from entity @s data.portal
data modify storage portal: _temp.result set value 1
execute if data entity @s data.portal.command unless data entity @s data.portal{command:""} run data modify storage portal: _temp.result set value 0

$execute unless data storage portal: _temp{result:1} store result storage portal: _temp.result int 1 as @p[distance=..$(distance)] run function portal:predicate with storage portal: _temp
execute if data storage portal: _temp{result:0} run return -3

$execute as @p[distance=..$(distance)] rotated as @s positioned as @s run function portal:_tp with storage portal: _temp

# clear
data remove storage portal: _temp
