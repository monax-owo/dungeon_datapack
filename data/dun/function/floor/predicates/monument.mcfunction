# 

execute unless entity @s[advancements={dun:floor/monument=true}] run return fail
scoreboard players operation @s dun.floor = #monument dun.floor

