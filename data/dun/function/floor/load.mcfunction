# 

execute unless score #flag.floor flag.flag = #flag.floor flag.flag run scoreboard players set #flag.floor flag.flag 1

scoreboard objectives add dun.floor dummy
scoreboard players add @a dun.floor 0

scoreboard players set #plain dun.floor 1
scoreboard players set #mineshaft dun.floor 2
scoreboard players set #jungle dun.floor 3
scoreboard players set #ship dun.floor 4
scoreboard players set #mansion dun.floor 5
scoreboard players set #taiga dun.floor 6
scoreboard players set #frozen_ocean dun.floor 7
scoreboard players set #monument dun.floor 8
scoreboard players set #desert dun.floor 9
scoreboard players set #nether dun.floor 10
scoreboard players set #end dun.floor 11
scoreboard players set #ending dun.floor 12

execute if score #flag.floor flag.flag matches 1 run function dun:floor/check_floor
