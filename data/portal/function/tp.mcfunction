# {pos: position, dimension: string, distance: int}

$execute unless data storage portal: dimensions[{id:"$(dimension)"}] run return 0

$execute as @p[distance=..$(distance)] run function portal:_tp {pos:"$(pos)",dimension:"$(dimension)"}