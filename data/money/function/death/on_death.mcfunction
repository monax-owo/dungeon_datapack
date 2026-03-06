# 

tellraw @a[team=admin,tag=debug] ["dead: ",{selector:"@s"}]

scoreboard players set #value money.calc 500
scoreboard players operation @s money -= #value money.calc

# clear
scoreboard players add @s death_count.diff 1
scoreboard players reset #value money.calc
