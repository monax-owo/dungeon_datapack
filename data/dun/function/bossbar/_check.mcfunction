# {index, value}

$execute as @e[scores={bossbar.id=$(value)}] store result bossbar boss:$(value) value run data get entity @s Health
$execute unless entity @e[scores={bossbar.id=$(value)}] run data remove storage boss: targets[$(index)]
$execute unless entity @e[scores={bossbar.id=$(value)}] run bossbar remove boss:$(value)
