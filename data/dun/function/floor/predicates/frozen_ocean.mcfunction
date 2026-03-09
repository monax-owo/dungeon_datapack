# 

execute unless entity @s[advancements={dun:floor/taiga=true}] run return fail
scoreboard players operation @s dun.floor = #frozen_ocean dun.floor
return 1
