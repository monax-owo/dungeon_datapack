# 

execute as @e[type=interaction,tag=money.gacha] if data entity @s interaction at @s run function money:gacha/_interact

execute if data storage money: _gacha.transformation[0] as @e[type=interaction,tag=money.gacha] run function money:gacha/rotate
