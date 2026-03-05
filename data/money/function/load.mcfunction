# 

execute unless score #flag.money.death flag.flag = #flag.money.death flag.flag run scoreboard players set #flag.money.death flag.flag 1
execute unless score #flag.money.gacha flag.flag = #flag.money.gacha flag.flag run scoreboard players set #flag.money.gacha flag.flag 1
execute unless score #flag.money.seller flag.flag = #flag.money.seller flag.flag run scoreboard players set #flag.money.seller flag.flag 1

function money:villager/load
function money:admin/load
function money:death/load
function money:gacha/load

scoreboard objectives add money dummy
scoreboard objectives setdisplay sidebar.team.gold money
scoreboard players add @a money 0

scoreboard objectives add money.calc dummy
scoreboard players set #many money.calc 1000
