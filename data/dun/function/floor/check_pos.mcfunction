# 

# 廃坑入口
execute positioned 92 2 -55 as @a[distance=..4] run scoreboard players operation @s dun.floor = #mineshaft dun.floor
# 出口
execute positioned 28 -8 -76 as @a[distance=..4] run scoreboard players operation @s dun.floor = #mineshaft dun.floor

# ジャングル入口
execute positioned 21 -8 -74 as @a[distance=..4] run scoreboard players operation @s dun.floor = #jungle dun.floor
# ジャングル出口
execute positioned -10 -8 -4 as @a[distance=..4] run scoreboard players operation @s dun.floor = #jungle dun.floor

# 森の洋館入口
execute positioned -10 -9 14 as @a[distance=..4] run scoreboard players operation @s dun.floor = #mansion dun.floor
# 森の洋館出口
execute positioned -8 2 82 as @a[distance=..4] run scoreboard players operation @s dun.floor = #mansion dun.floor

# タイガ入口
execute positioned -8 2 90 as @a[distance=..4] run scoreboard players operation @s dun.floor = #taiga dun.floor
# タイガ出口
execute as @a at @s if biome ~ ~ ~ snowy_taiga run scoreboard players operation @s dun.floor = #taiga dun.floor

# 凍った海
execute as @a at @s if biome ~ ~ ~ frozen_ocean run scoreboard players operation @s dun.floor = #frozen_ocean dun.floor

# 海底神殿入口
execute positioned -155 -14 144 as @a[distance=..5] run scoreboard players operation @s dun.floor = #monument dun.floor
# 海底神殿出口
execute positioned -220 -15 149 as @a[distance=..5] run scoreboard players operation @s dun.floor = #monument dun.floor

# 砂漠入口
execute positioned -220 -10 134 as @a[distance=..4] run scoreboard players operation @s dun.floor = #desert dun.floor
# 砂漠出口
execute positioned -164 -24 -50 as @a[distance=..4] run scoreboard players operation @s dun.floor = #desert dun.floor

# ネザー
execute as @a at @s if dimension minecraft:the_nether run scoreboard players operation @s dun.floor = #nether dun.floor

# エンド
execute as @a at @s if dimension minecraft:the_end run scoreboard players operation @s dun.floor = #end dun.floor

