# 

execute unless entity @s[advancements={dun:floor/jungle=true}] run return fail
scoreboard players operation @s dun.floor = #jungle dun.floor

return 1
