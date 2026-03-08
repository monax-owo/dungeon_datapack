# 

execute unless entity @s[advancements={dun:floor/nether=true}] run return fail
scoreboard players operation @s dun.floor = #nether dun.floor

