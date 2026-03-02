# {id}

$bossbar set boss:$(id) players @a
$execute as @n[scores={bossbar.id=$(id)}] store result bossbar boss:$(id) value run data get entity @s Health
$execute unless entity @n[scores={bossbar.id=$(id)}] run data remove storage boss: targets[{id:$(id)}]
$execute unless entity @n[scores={bossbar.id=$(id)}] run bossbar remove boss:$(id)
