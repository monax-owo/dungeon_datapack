# 

summon minecraft:wither ~ ~ ~ {Rotation:[1,0f],CustomName:"ウィザ子",Health:500,Tags:["dun","boss4"],attributes:[{base:2.0d,id:"minecraft:scale"},{base:0.4d,id:"minecraft:movement_speed"},{base:300d,id:"minecraft:max_health"},{base:7.0d,id:"minecraft:attack_damage"}]}
# summon minecraft:magma_cube ~ ~1 ~1 {CustomName:"マグ子",Health:30,Tags:["dun","boss4","boss.summoning"],attributes:[{base:1.d,id:"minecraft:scale"},{base:0.4d,id:"minecraft:movement_speed"},{base:60d,id:"minecraft:max_health"},{base:0.7,id:scale},{base:0.4,id:movement_speed}]}
# summon minecraft:piglin_brute ~ ~1 ~-1 {CustomName:"ピグ子",Health:30,Tags:["dun","boss4","boss.summoning"],attributes:[{base:1.d,id:"minecraft:scale"},{base:0.4d,id:"minecraft:movement_speed"},{base:60d,id:"minecraft:max_health"},{base:0.7,id:scale},{base:0.4,id:movement_speed}],equipment:{mainhand:{count:1,id:"minecraft:golden_axe"}}}

function dun:bossbar/apply_any
