# {group: string, name: string}

$execute unless data storage dun: groups[{id:"$(group)"}] run return 0

$summon minecraft:marker ~ ~ ~ {data:{dun:{group:"$(group)"},name:"$(name)"}}

# example

# function dun:alias/summon_marker {group:"plain",name:"平原"}
# function dun:alias/summon_marker {group:"mineshaft",name:"廃鉱"}
# function dun:alias/summon_marker {group:"jungle",name:"ジャングル"}
# function dun:alias/summon_marker {group:"mansion",name:"森の洋館"}
# function dun:alias/summon_marker {group:"taiga",name:"タイガ"}
# function dun:alias/summon_marker {group:"frozen_ocean",name:"凍った海"}
# function dun:alias/summon_marker {group:"monument",name:"海底神殿"}
# function dun:alias/summon_marker {group:"desert",name:"砂漠"}
# function dun:alias/summon_marker {group:"nether",name:"ネザー"}
# function dun:alias/summon_marker {group:"end",name:"エンド"}