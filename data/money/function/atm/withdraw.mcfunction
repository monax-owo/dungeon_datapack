# 

execute unless score #count money.calc = #count money.calc run scoreboard players set #count money.calc 1

scoreboard players operation #value money.calc = #100 money.calc
scoreboard players operation #value money.calc *= #count money.calc

execute if score @s money < #value money.calc run scoreboard players reset #count money.calc
execute if score @s money < #value money.calc run return fail

scoreboard players operation @s money -= #value money.calc

execute store result storage money: temp.count int 1 run scoreboard players get #count money.calc
function money:atm/give_money with storage money: temp

# clear
data remove storage money: temp

# 

tellraw @s {text:"-",color:"red",extra:[{score:{name:"#value",objective:"money.calc"}}]}
execute if score #value money.calc >= #many money.calc run playsound entity.player.levelup master @s ~ ~ ~ 0.5 .8
execute if score #value money.calc < #many money.calc run playsound entity.experience_orb.pickup master @s ~ ~ ~ 0.5 .8
