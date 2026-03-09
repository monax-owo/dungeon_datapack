# 

execute unless entity @s[advancements={dun:floor/frozen_ocean=true}] run return fail
scoreboard players operation @s dun.floor = #monument dun.floor

return 1
