# 

particle reverse_portal ~ ~0.5 ~ 0 1 0 5 100
summon minecraft:evoker ~ ~ ~ {DeathLootTable:"dun:item/totem_of_undying",CustomName:"エヴォ子",Health:300.0f,Tags:["dun","boss1","boss.summoning"],attributes:[{base:2.0d,id:"minecraft:scale"},{base:0.3d,id:"minecraft:movement_speed"},{base:300d,id:"minecraft:max_health"},{base:50.0d,id:"minecraft:attack_damage"}]}
summon minecraft:ravager ~-1 ~ ~2 {DeathLootTable:"dun:item/goat_horn",CustomName:"ラヴェ子",Health:60.0f,Tags:["dun","boss1","boss.summoning"],attributes:[{base:1.d,id:"minecraft:scale"},{base:0.2d,id:"minecraft:movement_speed"},{base:60d,id:"minecraft:max_health"},{base:0.7,id:scale},{base:0.4,id:movement_speed}],drop_chances:{chest:0.0f,feet:0.0f,head:0.0f,legs:0.0f,mainhand:0.0f,offhand:0.0f,saddle:0.0f,body:0.0f},equipment:{mainhand:{count:1,id:"minecraft:iron_axe"}}}
summon minecraft:ravager ~-1 ~ ~-2 {DeathLootTable:"dun:item/goat_horn",CustomName:"ラヴェ子",Health:60.0f,Tags:["dun","boss1","boss.summoning"],attributes:[{base:1.d,id:"minecraft:scale"},{base:0.2d,id:"minecraft:movement_speed"},{base:60d,id:"minecraft:max_health"},{base:0.7,id:scale},{base:0.4,id:movement_speed}],drop_chances:{chest:0.0f,feet:0.0f,head:0.0f,legs:0.0f,mainhand:0.0f,offhand:0.0f,saddle:0.0f,body:0.0f},equipment:{mainhand:{count:1,id:"minecraft:iron_axe"}}}

function dun:bossbar/apply_any
