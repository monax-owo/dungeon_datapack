# 

execute store result score #value _rand run random value 0..100

execute if score #value _rand matches 0..39 run data modify storage dun: _monster.equipment set value {head:{id:"minecraft:leather_helmet"},chest:{id:"minecraft:leather_chestplate"},legs:{id:"minecraft:leather_leggings"},feet:{id:"minecraft:leather_boots"}}
execute if score #value _rand matches 40..50 run data modify storage dun: _monster.equipment set value {head:{id:"minecraft:chainmail_helmet"},chest:{id:"minecraft:chainmail_chestplate"},legs:{id:"minecraft:chainmail_leggings"},feet:{id:"minecraft:chainmail_boots"}}
execute if score #value _rand matches 51..100 run data modify storage dun: _monster.equipment set value {head:{id:"minecraft:iron_helmet"},chest:{id:"minecraft:iron_chestplate"},legs:{id:"minecraft:iron_leggings"},feet:{id:"minecraft:iron_boots"}}

tellraw @a {storage:"dun:",nbt:"_monster"}