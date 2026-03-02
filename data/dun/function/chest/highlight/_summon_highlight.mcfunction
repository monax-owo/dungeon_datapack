# {pos: position}

$execute unless loaded $(pos) run return 0
$execute positioned $(pos) if entity @n[distance=0,tag=chest.highlight] run return -1

$summon minecraft:block_display $(pos) {Tags:["chest.highlight"],block_state:{Name:"minecraft:pink_stained_glass"},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[1,1,1],translation:[-.5,0,-.5]},Glowing:true}
