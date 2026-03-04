# 

scoreboard players remove @s duration 1
execute as @e[type=!#dun:ignore_damage] at @s if entity @e[type=armor_stand,tag=ice,distance=..2] run summon armor_stand ~ ~ ~ {Tags:["summon_ice"],NoGravity:true,Invisible:false,attributes:[{id:"scale",base:1.5}]}
execute as @e[type=armor_stand,tag=summon_ice] at @s if entity @e[type=armor_stand,tag=ice,distance=..4.1] at @s run scoreboard players set @s item.ice 81

particle minecraft:dust{color:12320750,scale:1.7} ^ ^1 ^0.6 0 0 0 1 0
particle minecraft:dust{color:12320750,scale:1.7} ^-0.3 ^1 ^0.6 0 0 0 1 0
particle minecraft:dust{color:12320750,scale:1.7} ^0.3 ^1 ^0.6 0 0 0 1 0
particle minecraft:dust{color:12320750,scale:1.7} ^0.7 ^1 ^0.3 0 0 0 1 0
particle minecraft:dust{color:12320750,scale:1.7} ^-0.7 ^1 ^0.3 0 0 0 1 0
particle minecraft:dust{color:12320750,scale:1.7} ^0.9 ^1 ^-0.3 0 0 0 1 0
particle minecraft:dust{color:12320750,scale:1.7} ^-0.9 ^1 ^-0.3 0 0 0 1 0
kill @s[scores={duration=..0}]
tp @s ^ ^ ^2
