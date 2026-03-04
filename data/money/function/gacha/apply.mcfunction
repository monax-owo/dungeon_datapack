# 

data modify entity @n[tag=money.gacha,tag=money.gacha.knob] transformation merge from storage money: _gacha.transformation[0].knob
data modify entity @n[tag=money.gacha,tag=money.gacha.body] transformation merge from storage money: _gacha.transformation[0].body

data remove storage money: _gacha.transformation[0]
