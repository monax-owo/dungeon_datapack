execute positioned 191 13.0 -44.7 as @a[scores={click_villager=1..},distance=..3,advancements={dun:story/boss1=true,dun:story/boss2=true,dun:story/boss3=false}] run scoreboard players set @s boss2_talk 1001
scoreboard players remove @a[scores={boss2_talk=0..}] boss2_talk 1
execute as @a[scores={boss2_talk=1000}] at @s run tellraw @s {text:"<原住民A>何？洋館の先の海底に神殿が？"}
execute as @a[scores={boss2_talk=970}] at @s run tellraw @s {text:"<原住民A>信じ難いことだが、まぁあんたらが言うのなら本当なんだろうな。"}
execute as @a[scores={boss2_talk=930}] at @s run tellraw @s {text:"<原住民A>なんでこの地の住民なのに知らないのかって？"}
execute as @a[scores={boss2_talk=890}] at @s run tellraw @s {text:"<原住民A>俺ら若者は洋館にすら近づけなかったからその先を知らないんだよな。"}
execute as @a[scores={boss2_talk=850}] at @s run tellraw @s {text:"<原住民A>まあその「がーでぃあん？」ってやつの凶暴さはわからないが、"}
execute as @a[scores={boss2_talk=810}] at @s run tellraw @s {text:"<原住民A>良くぞそれを倒してくれた。感謝する。"}
execute as @a[scores={boss2_talk=770}] at @s run tellraw @s {text:"<原住民A>それはそうと、何か聞きたいことはあるか？"}
execute as @a[scores={boss2_talk=740}] at @s run tellraw @s {text:"<原住民A>このあたりの設備の話なら教えてやれるぞ。"}
execute as @a[scores={boss2_talk=720}] at @s run tellraw @s ["",{text:"[ガチャの説明を聞く]",color:"green",click_event:{action:"run_command",command:"scoreboard players set @s gacha_talk 1001"}}]
execute as @a[scores={boss2_talk=720}] at @s run tellraw @s ["",{text:"[ショップの説明を聞く]",color:"green",click_event:{action:"run_command",command:"scoreboard players set @s shop_talk 1001"}}]
execute as @a[scores={boss2_talk=720}] at @s run tellraw @s ["",{text:"[飯屋の説明を聞く]",color:"green",click_event:{action:"run_command",command:"scoreboard players set @s mesiya_talk 1001"}}]
execute as @a[scores={boss2_talk=720}] at @s run tellraw @s ["",{text:"[道具屋の説明を聞く]",color:"green",click_event:{action:"run_command",command:"scoreboard players set @s douguya_talk 1001"}}]
execute as @a[scores={boss2_talk=720}] at @s run tellraw @s ["",{text:"[鍛冶屋の説明を聞く]",color:"green",click_event:{action:"run_command",command:"scoreboard players set @s kajiya_talk 1001"}}]
execute as @a[scores={boss2_talk=1000}] at @s run scoreboard players set @s kajiya_talk 0
execute as @a[scores={boss2_talk=1000}] at @s run scoreboard players set @s gacha_talk 0
execute as @a[scores={boss2_talk=1000}] at @s run scoreboard players set @s mesiya_talk 0
execute as @a[scores={boss2_talk=1000}] at @s run scoreboard players set @s shop_talk 0
execute as @a[scores={boss2_talk=1000}] at @s run scoreboard players set @s douguya_talk 0