# {group: string}

$execute unless data storage dun: groups[{id:"$(group)"}] run return 0

$execute as @s[type=marker] if data entity @s data.dun{group:"$(group)"} positioned as @s run function dun:monster/_summon_group {group:"$(group)"}
