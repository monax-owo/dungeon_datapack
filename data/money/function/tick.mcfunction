# 

execute if score #flag.money.atm flag.flag matches 1 run function money:atm/tick
execute if score #flag.money.death flag.flag matches 1 run function money:death/tick
execute if score #flag.money.gacha flag.flag matches 1 run function money:gacha/tick
execute if score #flag.money.seller flag.flag matches 1 run function money:seller/tick

# TODO: @aでいい？
execute as @a[tag=show_money] run function money:show_money
tag @a remove show_money
