# 

execute unless entity @s[advancements={dun:floor/desert=true}] run return fail
scoreboard players operation @s dun.floor = #desert dun.floor

return 1
