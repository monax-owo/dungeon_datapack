# 

execute if score @s money.calc matches 0 unless data entity @s interaction run return 0
execute if score @s money.calc matches 0 on target unless items entity @s weapon.mainhand *[custom_data~{money:{coin:true}}] run return 0
execute if score @s money.calc matches 0 on target run function money:gacha/roll
execute if score @s money.calc matches 0 run data modify entity @s data.interaction set from entity @s interaction

# TODO: 一瞬止まる時がある
execute if score @s money.calc matches 5 run function money:gacha/apply
execute if score @s money.calc matches 10 run function money:gacha/apply
execute if score @s money.calc matches 15 run function money:gacha/apply
execute if score @s money.calc matches 20 run function money:gacha/apply
execute if score @s money.calc matches 25 run function money:gacha/apply
execute if score @s money.calc matches 30 run function money:gacha/apply
execute if score @s money.calc matches 35 run function money:gacha/apply
execute if score @s money.calc matches 40 run function money:gacha/apply

scoreboard players add @s money.calc 1

execute if score @s money.calc matches ..40 run return 0
scoreboard players reset @s money.calc

data modify entity @s interaction set from entity @s data.interaction
execute on target run function money:gacha/pop

# clear
data remove entity @s interaction
scoreboard players set @s money.calc 0
