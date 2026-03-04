# {command, max}

# init
data modify storage util: index set value 0
scoreboard players set #index.command for.index 0

$data modify storage util: args_command append value {command: "$(command)", max: $(max)}
function util:_for/_command_inner with storage util: args_command[-1]

# clear
data remove storage util: args_command[-1]
data remove storage util: index
scoreboard players set #index.command for.index 0
