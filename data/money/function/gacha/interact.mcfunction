# 

scoreboard players add @s money.calc 0
execute if score @s money.calc matches 0 run function money:gacha/_interact

scoreboard players add @s money.calc 1

# TODO: 一瞬止まる時がある
execute if score @s money.calc matches 5 run function money:gacha/apply
execute if score @s money.calc matches 10 run function money:gacha/apply
execute if score @s money.calc matches 15 run function money:gacha/apply
execute if score @s money.calc matches 20 run function money:gacha/apply
execute if score @s money.calc matches 25 run function money:gacha/apply
execute if score @s money.calc matches 30 run function money:gacha/apply
execute if score @s money.calc matches 35 run function money:gacha/apply
execute if score @s money.calc matches 40 run function money:gacha/apply

execute unless score @s money.calc matches 40.. run return 0
scoreboard players reset @s money.calc
# TODO: as プレイヤーしたい()
execute on target run function money:gacha/pop

# clear
data remove entity @s interaction
