# {pos}

$execute unless block $(pos) #util:can_loot_table run tellraw @a[team=admin,tag=debug] ["failed position: $(pos)"]
$execute if block $(pos) #util:can_loot_table run tellraw @a[team=admin,tag=debug] ["modified position: $(pos)"]

$data modify block $(pos) LootTable set value "dun:chest"