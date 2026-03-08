# 

execute positioned 112 4 -46 as @a[distance=..7] run scoreboard players operation @s dun.floor = #mineshaft dun.floor
execute positioned 25 -8 -74 as @a[distance=..4] run scoreboard players operation @s dun.floor = #jungle dun.floor
execute positioned -10 -8 -4 as @a[distance=..4] run scoreboard players operation @s dun.floor = #mansion dun.floor
execute positioned -8 2 90 as @a[distance=..4] run scoreboard players operation @s dun.floor = #taiga dun.floor
execute as @a at @s if biome ~ ~ ~ frozen_ocean run scoreboard players operation @s dun.floor = #frozen_ocean dun.floor
execute positioned -155 -14 144 as @a[distance=..5] run scoreboard players operation @s dun.floor = #monument dun.floor
execute positioned -220 -15 149 as @a[distance=..5] run scoreboard players operation @s dun.floor = #desert dun.floor
# TODO: ポータル遷移を検知する
#       終点だけでなく始点も検知すれば良さそう