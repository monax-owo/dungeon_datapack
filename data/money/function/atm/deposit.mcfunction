# 

execute unless score #count money.calc = #count money.calc run scoreboard players set #count money.calc 1

execute unless items entity @s weapon.mainhand *[custom_data~{money:{atm:true}}] run return fail
execute store result score #item_count money.calc run data get entity @s SelectedItem.count

execute if score #count money.calc > #item_count money.calc run scoreboard players operation #count money.calc = #item_count money.calc

scoreboard players operation #value money.calc = #100 money.calc
scoreboard players operation #value money.calc *= #count money.calc

scoreboard players operation @s money += #value money.calc

execute store result storage money: temp.count int -1 run scoreboard players get #count money.calc
item modify entity @s weapon.mainhand {function:"set_count",count:{type:"storage",storage:"money:",path:"temp.count"},add:true}

# clear
data remove storage money: temp

# 

tellraw @s {text:"[残高] ",color:"green",extra:["+",{score:{name:"#value",objective:"money.calc"}}]}
execute if score #value money.calc >= #many money.calc run playsound entity.player.levelup master @s ~ ~ ~ 0.5 .8
execute if score #value money.calc < #many money.calc run playsound entity.experience_orb.pickup master @s ~ ~ ~ 0.5 .8
