# 

particle reverse_portal ~ ~0.5 ~ 0 1 0 5 100
summon minecraft:evoker ~ ~ ~ {DeathLootTable:"dun:item/totem_of_undying",CustomName:"館の主",Health:300,Tags:["dun","boss1","boss.summoning"],attributes:[{base:2.0d,id:"minecraft:scale"},{base:0.3d,id:"minecraft:movement_speed"},{base:300d,id:"minecraft:max_health"},{base:50.0d,id:"minecraft:attack_damage"}]}
summon minecraft:ravager ~-1 ~ ~2 {DeathLootTable:"dun:item/goat_horn",CustomName:"番犬A",Health:60,Tags:["dun","boss1","boss.summoning"],attributes:[{base:1.d,id:"minecraft:scale"},{base:0.2d,id:"minecraft:movement_speed"},{base:60d,id:"minecraft:max_health"},{base:0.7,id:scale},{base:0.4,id:movement_speed}],drop_chances:{chest:0,feet:0,head:0,legs:0,mainhand:0,offhand:0,saddle:0,body:0},equipment:{mainhand:{count:1,id:"minecraft:stone_axe"}}}
summon minecraft:ravager ~-1 ~ ~-2 {DeathLootTable:"dun:item/goat_horn",CustomName:"番犬B",Health:60,Tags:["dun","boss1","boss.summoning"],attributes:[{base:1.d,id:"minecraft:scale"},{base:0.2d,id:"minecraft:movement_speed"},{base:60d,id:"minecraft:max_health"},{base:0.7,id:scale},{base:0.4,id:movement_speed}],drop_chances:{chest:0,feet:0,head:0,legs:0,mainhand:0,offhand:0,saddle:0,body:0},equipment:{mainhand:{count:1,id:"minecraft:stone_axe"}}}

function dun:bossbar/apply_any
