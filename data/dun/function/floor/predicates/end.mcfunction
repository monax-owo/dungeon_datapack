# 

execute unless entity @s[advancements={dun:floor/end=true}] run return fail
scoreboard players operation @s dun.floor = #end dun.floor

