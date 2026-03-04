# 

execute as @e[type=interaction,tag=money.gacha] if data entity @s interaction at @s run function money:gacha/_interact

execute as @e[type=interaction,scores={money.calc=1..}] at @s run function money:gacha/rotate
