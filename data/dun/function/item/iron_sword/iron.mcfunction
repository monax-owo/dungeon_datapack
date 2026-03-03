# 

scoreboard players remove @s duration 1
execute as @e[type=!#dun:ignore_damage] at @s if entity @e[type=armor_stand, tag= iron,distance=..5] run damage @s 10 generic by @s

particle minecraft:sweep_attack ^2 ^ ^2 0 0 0 3 5
particle minecraft:sweep_attack ^-2 ^ ^2 0 0 0 3 5
particle minecraft:sweep_attack ^4 ^ ^1 0 0 0 3 5
particle minecraft:sweep_attack ^-4 ^ ^1 0 0 0 3 5
particle minecraft:sweep_attack ^ ^ ^2 0 0 0 3 5
kill @s[scores={duration=..0}]
