# 

execute unless score @s money matches 100.. run return fail

loot give @s loot money:money
scoreboard players remove @s money 100

tellraw @s {text:"-",color:"red",extra:["100"]}
execute if score #value money.calc >= #many money.calc run playsound entity.player.levelup master @s ~ ~ ~ 0.5 .8
execute if score #value money.calc < #many money.calc run playsound entity.experience_orb.pickup master @s ~ ~ ~ 0.5 .8

# clear
scoreboard players reset #value money.calc
