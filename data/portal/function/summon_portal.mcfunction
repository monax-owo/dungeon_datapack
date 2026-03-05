# {pos: position, rotation: rotation, dimension: string, distance: int, command: command}
# Example: {pos: "~ ~ ~", rotation: "~ ~", dimension: "overworld", distance: 0.5, command: ""}

$execute if loaded $(pos)

$execute unless data storage portal: dimensions[{id:"$(dimension)"}] run return 0

$summon marker ~ ~ ~ {Tags:[portal],data:{name:"Portal",portal:{pos:"$(pos)",rotation:"$(rotation)",dimension:"$(dimension)",distance:$(distance),command:"$(command)"}}}
