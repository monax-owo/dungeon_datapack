# {pos: position, dimension: string, distance: int}

$execute if loaded $(pos)

$execute unless data storage portal: dimensions[{id:"$(dimension)"}] run return 0

$summon marker ~ ~ ~ {Tags:[portal],data:{name:"Portal",portal:{pos:"$(pos)",dimension:"$(dimension)",distance:$(distance)}}}
