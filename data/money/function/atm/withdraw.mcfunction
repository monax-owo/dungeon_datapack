# 

execute unless function money:atm/_withdraw run return fail

tellraw @s {text:"-",color:"red",extra:[{score:{name:"#value",objective:"money.calc"}}]}
execute if score #value money.calc >= #many money.calc run playsound entity.player.levelup master @s ~ ~ ~ 0.5 .8
execute if score #value money.calc < #many money.calc run playsound entity.experience_orb.pickup master @s ~ ~ ~ 0.5 .8

# clear
scoreboard players reset #value money.calc
scoreboard players reset #count money.calc
