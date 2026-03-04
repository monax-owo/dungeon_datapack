# 

execute unless entity @n[tag=money.villager.manager] run summon armor_stand 0.0 0.0 0.0 {Tags:["money.villager.manager"],ShowArms:true,Invisible:true,Marker:true,Invulnerable:true}

data modify storage money: _villager.potion.loot_tables set value [\
  {loot_table: "dun:gen/items/potion_luck"},\
  {loot_table: "dun:gen/items/potion_regeneration"},\
  {loot_table: "dun:gen/items/potion_healing"},\
  {loot_table: "dun:gen/items/potion_swiftness"},\
  {loot_table: "dun:gen/items/potion_water_breathing"},\
  {loot_table: "dun:gen/items/potion_fire_resistance"},\
  {loot_table: "dun:gen/items/potion_leaping"},\
  {loot_table: "dun:gen/items/potion_strength"},\
  {loot_table: "dun:gen/items/potion_turtle_master"}\
]

function money:villager/set_data {data:"storage money: _villager.potion.loot_tables",output:"storage money: villager.potion.recipes"}
function util:for_array_fn {function:"money:villager/merge",data:"storage money: villager.potion.recipes",args_id:0,for_id:0,start_index:0}

# clear
data remove entity @n[tag=money.villager.manager] equipment.mainhand
