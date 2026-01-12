# {id: string, name: "string" | raw, type: entity_type,tag: string, health: number}

$summon zombie ~ ~ ~ {Tags:["boss","bossbar_target"],attributes:[{id:"minecraft:max_health",base:100}],Health:100,CustomName:"うわあああ",CustomNameVisible:true,data:{dun:{boss:{id: "$(id)"}}}}

# ここにエンティティがいるかのチェックを置く
$data modify storage temp:boss summon.name set value "$(name)"
$data modify storage temp:boss summon.id set value "$(id)"
data modify storage dun:boss targets append from storage temp:boss summon.id

function dun:boss/_add_bossbar with storage temp:boss summon

# clear
data remove storage temp:boss summon