# 

execute if entity @s[tag=money.atm] on target if entity @s[predicate=util:is_sneaking] run scoreboard players set #count money.calc 10
execute if entity @s[tag=money.atm.deposit] on target run function money:atm/deposit
execute if entity @s[tag=money.atm.withdraw] on target run function money:atm/withdraw

# clear
data remove entity @s interaction
