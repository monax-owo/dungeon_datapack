# 

execute as @e[type=interaction,tag=money.gacha] if data entity @s interaction at @s run function money:gacha/_interact

execute if data storage money: _gacha.transformation[0] as @e[type=block_display,tag=money.gacha,tag=money.gacha.knob] run function money:gacha/rotate
