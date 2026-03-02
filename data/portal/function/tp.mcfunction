# {pos: position, rotation: rotation, dimension: string, distance: int}

$execute unless data storage portal: dimensions[{id:"$(dimension)"}] run return 0

execute unless data entity @s data.portal.rotation run data modify entity @s data.portal.rotation set value "~ ~"

$execute as @p[distance=..$(distance)] run function portal:_tp with entity @s data.portal
