# 

execute unless entity @s[advancements={dun:floor/plain=true}] run return fail
scoreboard players operation @s dun.floor = #plain dun.floor

return 1
