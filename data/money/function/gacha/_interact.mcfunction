# 

execute on target run function money:gacha/roll

data modify storage money: _gacha.transformation set from storage money: gacha.transformation

scoreboard players set @s money.calc 1

# clear
data remove entity @s interaction
