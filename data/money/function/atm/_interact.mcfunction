# 

execute if entity @s[tag=money.atm] on target if entity @s[predicate=util:is_sneaking] run scoreboard players set #count money.calc 10
execute if entity @s[tag=money.atm.deposit] on target unless function money:atm/deposit run function money:atm/clear
execute if entity @s[tag=money.atm.withdraw] on target unless function money:atm/withdraw run function money:atm/clear

# clear
data remove entity @s interaction
