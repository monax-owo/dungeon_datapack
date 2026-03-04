# 

function util:for_array_fn {function:"dun:bossbar/_check",data:"storage boss: targets",args_id:0,for_id: 0,start_index:0}

execute if score #flag.bossbar flag.flag matches 1 run schedule function dun:bossbar/check 1s
