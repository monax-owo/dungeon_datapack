# {command, max}

$$(command)

# increment
scoreboard players add #index.command for.index 1
execute store result storage util: index int 1 run scoreboard players get #index.command for.index

# while
$execute if score #index.command for.index matches ..$(max) run function util:_for/_command_inner with storage util: args_command[-1]
