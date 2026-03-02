# {index, value}

$execute as @n[scores={boss_summon_id=$(value)}] store result bossbar boss:$(value) value run data get entity @s Health
$execute unless entity @n[scores={boss_summon_id=$(value)}] run data remove storage boss: targets[$(index)]
# $execute unless entity @n[scores={boss_summon_id=$(value)}] run bossbar remove boss:$(value)
