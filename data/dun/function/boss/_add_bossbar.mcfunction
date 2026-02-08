# {id: string, name: string, health: number}

$tellraw @a[team=admin,tag=debug] ["bossbar id:$(id)"]

$bossbar add dun:$(id) "$(name)"
$bossbar set dun:$(id) max $(health)
$bossbar set dun:$(id) players @a
