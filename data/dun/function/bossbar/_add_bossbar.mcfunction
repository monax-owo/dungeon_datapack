# {id: string, name: rawtext, health: number}

# debug
# $tellraw @a[tag=debug] ["bossbar id:$(id)"]

$bossbar add boss:$(id) $(name)
$bossbar set boss:$(id) max $(health)
