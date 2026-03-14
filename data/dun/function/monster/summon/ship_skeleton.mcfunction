# 

summon skeleton ~ ~ ~ {Tags:["dun","summon"],DeathLootTable:"dun:item/zako"}

function dun:monster/apply_equipments

data modify entity @n[tag=summon,type=skeleton] equipment.mainhand set value {id:"iron_sword"}
data modify entity @n[tag=summon,type=skeleton] equipment.head set value {components:{"minecraft:custom_name":{bold:1b,color:"gold",italic:0b,text:"Pharaoh",underlined:1b},"minecraft:lore":[{color:"gold",italic:0b,text:"Custom Head ID: 109419"},{color:"blue",italic:0b,text:"www.minecraft-heads.com"}],"minecraft:profile":{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTlhNGVmYTRjZWFiNWRmMDQ0OGVlYWRkMGQ3MjUwMTE1Y2ZhMTAxZGQ2ODMyZWQ5YmZmYmU1ZjM0OTlhZWM3In19fQ=="}]}},count:1,id:"minecraft:player_head"}

data modify storage calc: health set from entity @n[tag=summon,type=skeleton] Health
function dun:monster/set_health

tag @n[tag=summon,type=skeleton] remove summon