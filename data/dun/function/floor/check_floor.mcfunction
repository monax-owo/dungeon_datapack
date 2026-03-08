# 

execute as @a[scores={dun.floor=1..}] run function dun:floor/grant_advancement

execute if score #flag.floor flag.flag matches 1 run schedule function dun:floor/check_floor 1s
