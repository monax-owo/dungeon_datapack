scoreboard objectives add death_count deathCount
scoreboard objectives add death_count_diff dummy

execute as @a run scoreboard players operation @s death_count_diff = @s death_count