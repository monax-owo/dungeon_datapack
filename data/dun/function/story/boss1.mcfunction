execute positioned 191 13.0 -44.7 as @a[scores={click_villager=1..},distance=..3,advancements={dun:story/negotiation=true,dun:story/boss1=true,dun:story/boss2=false}] run scoreboard players set @s boss1_talk 1001
scoreboard players remove @a[scores={boss1_talk=0..}] boss1_talk 1
execute as @a[scores={boss1_talk=1000}] at @s run tellraw @s {text:"<原住民A>あんたらまさかあの館の主を倒したのか！"}
execute as @a[scores={boss1_talk=960}] at @s run tellraw @s {text:"<原住民A>あそこの主は昔から恐ろしいやつでな、"}
execute as @a[scores={boss1_talk=920}] at @s run tellraw @s {text:"<原住民A>館でヤバい実験をしていたかなんだかで捕まってたんだ。"}
execute as @a[scores={boss1_talk=870}] at @s run tellraw @s {text:"<原住民A>おそらく今回の騒動で脱走して戻っていたんだろうな。"}
execute as @a[scores={boss1_talk=830}] at @s run tellraw @s {text:"<原住民A>そんなやつを良くぞ倒してくれた。改めて感謝する。"}
execute as @a[scores={boss1_talk=790}] at @s run tellraw @s {text:"<原住民A>それはそうと、何か聞きたいことはあるか？"}
execute as @a[scores={boss1_talk=760}] at @s run tellraw @s {text:"<原住民A>このあたりの設備の話なら教えてやれるぞ。"}
execute as @a[scores={boss1_talk=740}] at @s run tellraw @s ["",{text:"[ガチャの説明を聞く]",color:"green",click_event:{action:"run_command",command:"scoreboard players set @s gacha_talk 1001"}}]
execute as @a[scores={boss1_talk=740}] at @s run tellraw @s ["",{text:"[ショップの説明を聞く]",color:"green",click_event:{action:"run_command",command:"scoreboard players set @s shop_talk 1001"}}]
execute as @a[scores={boss1_talk=740}] at @s run tellraw @s ["",{text:"[飯屋の説明を聞く]",color:"green",click_event:{action:"run_command",command:"scoreboard players set @s mesiya_talk 1001"}}]
execute as @a[scores={boss1_talk=740}] at @s run tellraw @s ["",{text:"[道具屋の説明を聞く]",color:"green",click_event:{action:"run_command",command:"scoreboard players set @s douguya_talk 1001"}}]
execute as @a[scores={boss1_talk=740}] at @s run tellraw @s ["",{text:"[鍛冶屋の説明を聞く]",color:"green",click_event:{action:"run_command",command:"scoreboard players set @s kajiya_talk 1001"}}]
execute as @a[scores={boss1_talk=1000}] at @s run scoreboard players set @s kajiya_talk 0
execute as @a[scores={boss1_talk=1000}] at @s run scoreboard players set @s gacha_talk 0
execute as @a[scores={boss1_talk=1000}] at @s run scoreboard players set @s mesiya_talk 0
execute as @a[scores={boss1_talk=1000}] at @s run scoreboard players set @s shop_talk 0
execute as @a[scores={boss1_talk=1000}] at @s run scoreboard players set @s douguya_talk 0