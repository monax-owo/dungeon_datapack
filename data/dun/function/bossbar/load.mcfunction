# 

scoreboard objectives add bossbar.id dummy
execute unless score #index bossbar.id = #index bossbar.id run scoreboard players set #index bossbar.id 0

execute unless score #flag.bossbar flag.flag = #flag.bossbar flag.flag run scoreboard players set #flag.bossbar flag.flag 1

function dun:bossbar/check
