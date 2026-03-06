# 

execute unless score #count money.calc = #count money.calc run scoreboard players set #count money.calc 1

scoreboard players operation #value money.calc = #100 money.calc
scoreboard players operation #value money.calc *= #count money.calc

execute if score @s money < #value money.calc run return fail

scoreboard players operation @s money -= #value money.calc

execute store result storage money: temp.roll int 1 run scoreboard players get #count money.calc
function money:atm/give_money with storage money: temp

# clear
data remove storage money: temp

return 1
