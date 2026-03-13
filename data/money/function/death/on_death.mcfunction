# 

tellraw @a[tag=debug] ["dead: ",{selector:"@s"}]

scoreboard players set #value money.calc 500
scoreboard players operation @s money -= #value money.calc

scoreboard players set @s dun.floor 0

# clear
scoreboard players operation @s death_count.diff = @s death_count
scoreboard players reset #value money.calc
