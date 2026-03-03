execute as @a[scores={item.sonic_charge=0..}] run scoreboard players remove @s item.sonic_charge 1

execute as @a[scores={item.sonic_charge=33}] run effect give @s darkness 3
execute as @a[scores={item.sonic_charge=12}] run effect give @e glowing 1
execute as @a[scores={item.sonic_charge=10}] run effect give @s blindness 3

execute as @a[scores={item.sonic_charge=0}] at @s run function dun:item/echo_sword/_summon_sonic
