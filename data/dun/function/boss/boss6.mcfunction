# 

summon minecraft:warden ~ ~ ~ {DeathLootTable:"dun:item/sculk_shrieker",CustomName:"エンドの怪物",Health:2000,Tags:["dun","boss6","boss.summoning"],attributes:[{base:2.0d,id:"minecraft:scale"},{base:2000d,id:"minecraft:max_health"},{base:30.0d,id:"minecraft:attack_damage"},{base:10,id:"armor"},{base:0.6,id:"movement_speed"}],Brain:{memories:{"dig_cooldown":{ttl:1000l,value:{}}}}}
effect give @n[type=warden] regeneration infinite 8 true
effect give @n[type=warden] resistance infinite 4 true

function dun:bossbar/apply_any
