# 

execute on target if items entity @s weapon.mainhand *[custom_data~{money:{coin:1b}}] run data modify storage money: temp.loot_table set value "money:capsule"
execute on target if items entity @s weapon.mainhand *[custom_data~{money:{coin:10b}}] run data modify storage money: temp.loot_table set value "money:compressed_capsule"
tellraw @s {storage:"money:",nbt:"temp"}

execute on target run item modify entity @s weapon.mainhand {function:"set_count",add:true,count:-1}

data modify storage money: _gacha.transformation set from storage money: gacha.transformation
