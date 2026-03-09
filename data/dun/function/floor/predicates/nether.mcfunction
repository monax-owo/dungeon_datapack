# 

execute unless entity @s[advancements={dun:floor/desert=true}] run return fail
scoreboard players operation @s dun.floor = #nether dun.floor

return 1
