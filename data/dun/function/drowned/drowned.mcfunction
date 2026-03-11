# 

execute if score @s dun.drown matches 6..10 positioned ~ ~1.65 ~ if block ~ ~ ~ water run particle dust{color:[0,0,0],scale:1} ^ ^ ^.1 .1 .1 .1 .01 1 normal @s
execute if score @s dun.drown matches 11..20 positioned ~ ~1.65 ~ if block ~ ~ ~ water run particle dust{color:[0,0,0],scale:1} ^ ^ ^.1 .1 .1 .1 .01 2 normal @s
execute if score @s dun.drown matches 21..30 positioned ~ ~1.65 ~ if block ~ ~ ~ water run particle dust{color:[0,0,0],scale:1.25} ^ ^ ^.1 .1 .1 .1 .01 4 normal @s
execute if score @s dun.drown matches 31..40 positioned ~ ~1.65 ~ if block ~ ~ ~ water run particle dust{color:[0,0,0],scale:1.25} ^ ^ ^.1 .1 .1 .1 .01 6 normal @s
execute if score @s dun.drown matches 41..58 positioned ~ ~1.65 ~ if block ~ ~ ~ water run particle dust{color:[0,0,0],scale:1.25} ^ ^ ^.1 .1 .1 .1 .01 4 normal @s

execute if score @s dun.drown matches 35 run playsound minecraft:block.bubble_column.whirlpool_ambient neutral @a ~ ~ ~ 1
execute if score @s dun.drown matches 35 run effect give @s slowness 4 3 true
execute if score @s dun.drown matches 45 run playsound minecraft:block.bubble_column.upwards_ambient neutral @a ~ ~ ~ .6
execute if score @s dun.drown matches 45 run effect give @s blindness 4 1 true
execute if score @s dun.drown matches 55 run playsound minecraft:block.bubble_column.upwards_inside neutral @a ~ ~ ~ .6
execute if score @s dun.drown matches 58 run tp @s -29 5 -196 180 0

scoreboard players add @s dun.drown 1

execute if score @s dun.drown matches 60 run tag @s remove dun.drowned
execute if score @s dun.drown matches 60 run scoreboard players set @s dun.drown 0
