# 

function util:for_array_fn {function:"dun:floor/m.reset_floor",data:"storage dun: groups",for_id:0,start_index:0}

tellraw @a[tag=debug] {storage:"dun:",nbt:"floor.reset"}

# clear
data modify storage dun: floor.reset set value []
