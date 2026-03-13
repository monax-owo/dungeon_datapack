# 

tellraw @a[tag=debug] ["dead: ",{selector:"@s"}]

scoreboard players set #value money.calc 500
scoreboard players operation @s money -= #value money.calc

scoreboard players set @s dun.floor 0

# clear
scoreboard players add @s death_count.diff 1
scoreboard players reset #value money.calc
