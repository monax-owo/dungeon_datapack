# 

scoreboard players add @s money.calc 1

# TODO: 一瞬止まる時がある
execute if entity @s[scores={money.calc=5}] run function money:gacha/apply
execute if entity @s[scores={money.calc=10}] run function money:gacha/apply
execute if entity @s[scores={money.calc=15}] run function money:gacha/apply
execute if entity @s[scores={money.calc=20}] run function money:gacha/apply
execute if entity @s[scores={money.calc=25}] run function money:gacha/apply
execute if entity @s[scores={money.calc=30}] run function money:gacha/apply
execute if entity @s[scores={money.calc=35}] run function money:gacha/apply
execute if entity @s[scores={money.calc=40}] run function money:gacha/apply

execute if score @s money.calc matches 40.. run scoreboard players reset @s money.calc
execute if score @s money.calc matches 40.. run function money:gacha/pop
