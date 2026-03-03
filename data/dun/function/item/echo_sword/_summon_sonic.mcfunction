# 

summon armor_stand ^ ^0.5 ^ {Tags:["sonic"],Invisible:true,Invulnerable:true,Marker:true}
tp @n[type=armor_stand,tag=sonic] ~ ~1 ~ ~ ~
scoreboard players set @n[type=armor_stand,tag=sonic] duration 30

playsound entity.warden.sonic_boom master @s ^ ^ ^1.5 3 1
scoreboard players set @s item.sonic_charge -1
attribute @s jump_strength base reset
attribute @s movement_speed base reset

effect clear @s darkness
effect clear @s blindness
effect clear @s slowness
