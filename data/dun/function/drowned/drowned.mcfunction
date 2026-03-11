# 

execute if score @s dun.drown matches 0 run effect give @s darkness 3
execute if score @s dun.drown matches 24 run effect give @s blindness 3
execute if score @s dun.drown matches 30 run tp @s -29 5 -196 180 0

scoreboard players add @s dun.drown 1

execute if score @s dun.drown matches 40 run tag @s remove dun.drowned
execute if score @s dun.drown matches 40 run scoreboard players set @s dun.drown 0
