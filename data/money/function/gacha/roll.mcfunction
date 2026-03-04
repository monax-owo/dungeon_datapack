# 

execute unless items entity @s weapon.mainhand *[custom_data~{money:{coin:true}}] run return fail

say roll!
data modify storage money: _gacha.transformation set from storage money: gacha.transformation
