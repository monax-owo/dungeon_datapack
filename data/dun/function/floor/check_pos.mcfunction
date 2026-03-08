# 

# TODO: 平原出口
execute positioned 112 4 -46 as @a[distance=..4] run scoreboard players operation @s dun.floor = #mineshaft dun.floor

# 廃坑入口
execute positioned 92 2 -55 as @a[distance=..4] run scoreboard players operation @s dun.floor = #mineshaft dun.floor
# 出口
execute positioned 25 -8 -74 as @a[distance=..4] run scoreboard players operation @s dun.floor = #mineshaft dun.floor

# ジャングル入口
# TODO:
# ジャングル出口
execute positioned -10 -8 -4 as @a[distance=..4] run scoreboard players operation @s dun.floor = #mansion dun.floor

# 森の洋館出口
execute positioned -8 2 90 as @a[distance=..4] run scoreboard players operation @s dun.floor = #taiga dun.floor

# タイガ出口
execute as @a at @s if biome ~ ~ ~ frozen_ocean run scoreboard players operation @s dun.floor = #frozen_ocean dun.floor

# 凍った海出口
execute positioned -155 -14 144 as @a[distance=..5] run scoreboard players operation @s dun.floor = #monument dun.floor

# 海底神殿出口
execute positioned -220 -15 149 as @a[distance=..5] run scoreboard players operation @s dun.floor = #desert dun.floor

# TODO: ポータル遷移を検知する
#       終点だけでなく始点も検知すれば良さそう
