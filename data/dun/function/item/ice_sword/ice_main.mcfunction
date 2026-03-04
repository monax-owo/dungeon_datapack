# 

execute as @e[type=armor_stand,tag=ice] at @s run function dun:item/ice_sword/ice
execute as @e[type=armor_stand,tag=summon_ice] at @s as @n[type=!#dun:ignore_damage,distance=..2] unless function dun:item/ice_sword/is_ride run tp @s ~ ~ ~
# execute as @e[type=armor_stand,tag=summon_ice] at @s run tp @n[type=!#dun:ignore_damage,distance=..3] ~ ~1.5 ~
