# 

execute unless entity @n[tag=money.villager.manager] run summon armor_stand 0.0 0.0 0.0 {Tags:["money.villager.manager"],ShowArms:true,Invisible:true,Marker:true,Invulnerable:true}

data modify storage money: _villager.potion.loot_tables set value [\
  {buy:{loot_table:"money:money",count:12},sell:{loot_table: "dun:gen/items/potion_luck"}},\
  {buy:{loot_table:"money:money",count:10},sell:{loot_table: "dun:gen/items/potion_regeneration"}},\
  {buy:{loot_table:"money:money",count:10},sell:{loot_table: "dun:gen/items/potion_healing"}},\
  {buy:{loot_table:"money:money",count:10},sell:{loot_table: "dun:gen/items/potion_swiftness"}},\
  {buy:{loot_table:"money:money",count:10},sell:{loot_table: "dun:gen/items/potion_water_breathing"}},\
  {buy:{loot_table:"money:money",count:10},sell:{loot_table: "dun:gen/items/potion_fire_resistance"}},\
  {buy:{loot_table:"money:money",count:10},sell:{loot_table: "dun:gen/items/potion_leaping"}},\
  {buy:{loot_table:"money:money",count:10},sell:{loot_table: "dun:gen/items/potion_strength"}},\
  {buy:{loot_table:"money:money",count:6},sell:{loot_table: "dun:gen/items/potion_turtle_master"}}\
]

data modify storage money: _villager.coin.loot_tables set value [\
  {buy:{loot_table:"money:money",count:5},sell:{loot_table:"money:coin"}},\
  {buy:{loot_table:"money:money",count:50},sell:{loot_table:"money:compressed_coin"}},\
]

function money:villager/call {data:"storage money: _villager.potion.loot_tables",output:"storage money: villager.potion.recipes"}
function money:villager/call {data:"storage money: _villager.coin.loot_tables",output:"storage money: villager.coin.recipes"}

data modify storage util: arg.tag set value "potion"
function util:for_array_fn {function:"money:villager/merge",data:"storage money: villager.potion.recipes",for_id:0,start_index:0}

data modify storage util: arg.tag set value "coin"
function util:for_array_fn {function:"money:villager/merge",data:"storage money: villager.coin.recipes",for_id:0,start_index:0}

# clear
data remove entity @n[tag=money.villager.manager] equipment.mainhand
