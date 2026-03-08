# 

execute unless entity @s[advancements={dun:floor/mansion=true}] run return fail
scoreboard players operation @s dun.floor = #mansion dun.floor
