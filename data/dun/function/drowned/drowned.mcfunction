# 

execute if score @s dun.drown matches ..20 positioned ~ ~1.65 ~ if block ~ ~ ~ water run particle dust{color:[0,0,0],scale:1} ^ ^ ^.1 .1 .1 .1 .01 2 normal @s
execute if score @s dun.drown matches 21.. positioned ~ ~1.65 ~ if block ~ ~ ~ water run particle dust{color:[0,0,0],scale:1} ^ ^ ^.1 .1 .1 .1 .01 4 normal @s

execute if score @s dun.drown matches 6 run effect give @s darkness 3 1 true
execute if score @s dun.drown matches 6 run effect give @s darkness 3 1 true
execute if score @s dun.drown matches 6 run effect give @s darkness 3 1 true
execute if score @s dun.drown matches 30 run effect give @s blindness 3 1 true
execute if score @s dun.drown matches 36 run tp @s -29 5 -196 180 0

scoreboard players add @s dun.drown 1

execute if score @s dun.drown matches 40 run tag @s remove dun.drowned
execute if score @s dun.drown matches 40 run scoreboard players set @s dun.drown 0
