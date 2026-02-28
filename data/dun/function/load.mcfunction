# 
execute unless data storage dun: {initialized:true} run function dun:init

scoreboard objectives add duration dummy
scoreboard objectives add sonic_charge dummy
scoreboard objectives add ice dummy
scoreboard objectives add damage minecraft.custom:minecraft.damage_dealt
scoreboard objectives add sneak minecraft.custom:sneak_time
scoreboard objectives add kakuritu dummy

data modify storage dun: groups set value [\
{id:"plain",name:"平原",ratio:1},\
{id:"mineshaft",name:"廃鉱",ratio:1.5},\
{id:"jungle",name:"ジャングル",ratio:2},\
{id:"mansion",name:"森の洋館",ratio:2.5},\
{id:"taiga",name:"タイガ",ratio:3},\
{id:"frozen_ocean",name:"凍った海",ratio:3.5},\
{id:"monument",name:"海洋神殿",ratio:4},\
{id:"desert",name:"砂漠",ratio:4.5},\
{id:"nether",name:"ネザー",ratio:5},\
{id:"end",name:"エンド",ratio:5.5},\
]

scoreboard objectives add dun.calc dummy

function dun:boss/load
function dun:chest/load
function dun:monster/load
