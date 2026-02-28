# 
execute unless data storage calc: health run return 0
execute unless data storage dun: current_group.ratio run return -1

execute store result score #health dun.calc run data get storage calc: health 1
execute store result score #ratio dun.calc run data get storage dun: current_group.ratio 1

scoreboard players operation #value dun.calc = #health dun.calc
scoreboard players operation #value dun.calc *= #ratio dun.calc

execute store result storage calc: final_health double 1.0 run scoreboard players get #value dun.calc

tellraw @a[tag=debug] {score:{name:"#health",objective:"dun.calc"}}
tellraw @a[tag=debug] {score:{name:"#multiplier",objective:"dun.calc"}}
