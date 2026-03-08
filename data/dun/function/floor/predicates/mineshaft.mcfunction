# 

execute unless entity @s[advancements={dun:floor/mineshaft=true}] run return fail
scoreboard players operation @s dun.floor = #mineshaft dun.floor

return 1
