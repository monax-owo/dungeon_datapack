# {pos: position, rotation: rotation, dimension: string, distance: int}
# Example: {pos: "~ ~ ~", rotation: "~ ~", dimension: "overworld", distance: 1}

$execute if loaded $(pos)

$execute unless data storage portal: dimensions[{id:"$(dimension)"}] run return 0

$summon marker ~ ~ ~ {Tags:[portal],data:{name:"Portal",portal:{pos:"$(pos)",rotation:"$(rotation)",dimension:"$(dimension)",distance:$(distance)}}}
