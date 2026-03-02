# {id: string, name: string, health: number}

$tellraw @a[team=admin,tag=debug] ["bossbar id:$(id)"]

$bossbar add boss:$(id) "$(name)"
$bossbar set boss:$(id) max $(health)
$bossbar set boss:$(id) players @a
