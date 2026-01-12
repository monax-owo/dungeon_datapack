# {index, value}

$execute as @e[nbt={data:{dun:{boss:{id:"$(value)"}}}}] store result bossbar dun:$(value) value run data get entity @s Health 1
$execute unless entity @e[nbt={data:{dun:{boss:{id:"$(value)"}}}}] run data remove storage dun:boss targets[$(index)]
$execute unless entity @e[nbt={data:{dun:{boss:{id:"$(value)"}}}}] run bossbar remove dun:$(value)