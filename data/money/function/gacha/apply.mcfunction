# 

say apply
data modify entity @n[tag=money.gacha,tag=t_out1] transformation merge from storage money: _gacha.transformation[0].knob
data modify entity @n[tag=money.gacha,tag=t_out2] transformation merge from storage money: _gacha.transformation[0].body

data remove storage money: _gacha.transformation[0]
