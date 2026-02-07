# 

execute unless entity @s[type=marker,tag=spawner] run return fail

execute at @s run function dun:monster/_summon_group with entity @s data.dun
