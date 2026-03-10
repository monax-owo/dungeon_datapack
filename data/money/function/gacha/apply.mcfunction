# 

data modify entity @n[tag=money.gacha,tag=money.gacha.knob] transformation merge from storage money: _gacha.transformation[0].knob
data modify entity @n[tag=money.gacha,tag=money.gacha.body] transformation merge from storage money: _gacha.transformation[0].body

execute store result score #value dun.rand run random value 1..4
execute if score #value dun.rand matches 1 run playsound block.iron_door.close master @a
execute if score #value dun.rand matches 2 run playsound block.iron_door.open master @a
execute if score #value dun.rand matches 3 run playsound block.iron_trapdoor.close master @a
execute if score #value dun.rand matches 4 run playsound block.iron_trapdoor.open master @a

data remove storage money: _gacha.transformation[0]
scoreboard players reset #value dun.rand
