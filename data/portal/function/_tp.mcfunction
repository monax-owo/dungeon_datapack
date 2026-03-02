# {pos: position, rotation: rotation, dimension: string}

$execute in $(dimension) run tp @s $(pos) $(rotation)

effect give @s minecraft:blindness 1 1 true
effect give @s minecraft:slowness 1 3 true

stopsound @s master minecraft:block.portal.travel
$playsound minecraft:block.portal.travel master @s $(pos) 0.08
