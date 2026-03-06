# 

execute if entity @s[tag=money.atm.deposit] on target run function money:atm/deposit
execute if entity @s[tag=money.atm.withdraw] on target run function money:atm/withdraw

# clear
data remove entity @s interaction
