# 

execute unless items entity @s weapon.mainhand *[custom_data~{money:{coin:true}}] run return fail
item modify entity @s weapon.mainhand {function:"set_count",add:true,count:-1}
say roll!
