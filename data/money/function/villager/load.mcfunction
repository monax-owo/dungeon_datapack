# 

execute unless entity @n[tag=money.villager.manager] run summon armor_stand 0.0 0.0 0.0 {Tags:["money.villager.manager"],ShowArms:true,Invisible:true,Marker:true,Invulnerable:true}

data modify storage money: _villager.potion.loot_tables set value [\
  {sell:{loot_table: "dun:gen/items/potion_luck"}},\
  {sell:{loot_table: "dun:gen/items/potion_regeneration"}},\
  {sell:{loot_table: "dun:gen/items/potion_healing"}},\
  {sell:{loot_table: "dun:gen/items/potion_swiftness"}},\
  {sell:{loot_table: "dun:gen/items/potion_water_breathing"}},\
  {sell:{loot_table: "dun:gen/items/potion_fire_resistance"}},\
  {sell:{loot_table: "dun:gen/items/potion_leaping"}},\
  {sell:{loot_table: "dun:gen/items/potion_strength"}},\
  {sell:{loot_table: "dun:gen/items/potion_turtle_master"}}\
]

function money:villager/call {data:"storage money: _villager.potion.loot_tables",output:"storage money: villager.potion.recipes"}
function util:for {command:"function money:villager/merge",max:16}

# clear
data remove entity @n[tag=money.villager.manager] equipment.mainhand
