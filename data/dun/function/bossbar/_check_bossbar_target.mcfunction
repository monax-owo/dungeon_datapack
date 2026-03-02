# {index, value}

$execute as @n[scores={bossbar.id=$(value)}] store result bossbar boss:$(value) value run data get entity @s Health
$execute unless entity @n[scores={bossbar.id=$(value)}] run data remove storage boss: targets[$(index)]
# $execute unless entity @n[scores={bossbar.id=$(value)}] run bossbar remove boss:$(value)
