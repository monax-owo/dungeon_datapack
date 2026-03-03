# 

summon minecraft:warden ~ ~ ~ {CustomName:"ウォデ子",Health:1000.0f,Tags:["dun","boss6","boss.summoning"],attributes:[{base:2.0d,id:"minecraft:scale"},{base:1000d,id:"minecraft:max_health"},{base:30.0d,id:"minecraft:attack_damage"},{base:0.6,id:"movement_speed"}],Brain:{memories:{"dig_cooldown":{ttl:1000l,value:{}}}}}

function dun:bossbar/apply_any
