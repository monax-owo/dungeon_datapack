# 

scoreboard objectives add death_count deathCount
scoreboard objectives add death_count.diff dummy

execute as @a run scoreboard players operation @s death_count.diff = @s death_count
