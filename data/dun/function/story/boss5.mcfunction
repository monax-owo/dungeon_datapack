execute positioned 191 13.0 -44.7 as @a[scores={click_villager=1..},distance=..3,advancements={dun:story/boss4=true,dun:story/boss5=true,dun:story/boss6=false}] run scoreboard players set @s boss5_talk 1001
scoreboard players remove @a[scores={boss5_talk=0..}] boss5_talk 1
execute as @a[scores={boss5_talk=1000}] at @s run tellraw @s {text:"<原住民A>地獄を抜けたらまるで終焉のような場所が迎えていた。"}
execute as @a[scores={boss5_talk=950}] at @s run tellraw @s {text:"<原住民A>空は黒く、黒い体に紫の眼をした龍が飛んでいた。"}
execute as @a[scores={boss5_talk=910}] at @s run tellraw @s {text:"<原住民A>その龍を倒したら黒いポータルが開いて"}
execute as @a[scores={boss5_talk=870}] at @s run tellraw @s {text:"<原住民A>そこに入ったらここに戻ってきた...と。"}
execute as @a[scores={boss5_talk=810}] at @s run tellraw @s {text:"<原住民A>聞いてるだけだとその龍はとても強そうだが、"}
execute as @a[scores={boss5_talk=770}] at @s run tellraw @s {text:"<原住民A>本当にそんな龍を倒したのか？"}
execute as @a[scores={boss5_talk=720}] at @s run tellraw @s {text:"<原住民A>そうか...あんたらは本当に強いんだな。"}
execute as @a[scores={boss5_talk=680}] at @s run tellraw @s {text:"<原住民A>この依頼はあんたらに頼んで正解だったようだ。"}
execute as @a[scores={boss5_talk=640}] at @s run tellraw @s {text:"<原住民A>そして、その終焉の地から続くところが無かったってことは"}
execute as @a[scores={boss5_talk=590}] at @s run tellraw @s {text:"<原住民A>この地の調査はもう終わりってことで良さそうだな。"}
execute as @a[scores={boss5_talk=550}] at @s run tellraw @s {text:"<原住民A>魔物の討伐の依頼も終わり。と言いたいところなのだが..."}
execute as @a[scores={boss5_talk=500}] at @s run tellraw @s {text:"<原住民A>どうやらまだ魔物は沸き続けているらしい。"}
execute as @a[scores={boss5_talk=460}] at @s run tellraw @s {text:"<原住民A>もう一度その終焉の地に足を運んで、調査して来てくれないか？"}
execute as @a[scores={boss5_talk=410}] at @s run tellraw @s {text:"<原住民A>もしかしたら何かわかるかもしれない。"}
execute as @a[scores={boss5_talk=370}] at @s run tellraw @s {text:"<原住民A>それはそうと、何か聞きたいことはあるか？"}
execute as @a[scores={boss5_talk=340}] at @s run tellraw @s {text:"<原住民A>このあたりの設備の話なら教えてやれるぞ。"}
execute as @a[scores={boss5_talk=320}] at @s run tellraw @s ["",{text:"[ガチャの説明を聞く]",color:"green",click_event:{action:"run_command",command:"scoreboard players set @s gacha_talk 1001"}}]
execute as @a[scores={boss5_talk=320}] at @s run tellraw @s ["",{text:"[ショップの説明を聞く]",color:"green",click_event:{action:"run_command",command:"scoreboard players set @s shop_talk 1001"}}]
execute as @a[scores={boss5_talk=320}] at @s run tellraw @s ["",{text:"[飯屋の説明を聞く]",color:"green",click_event:{action:"run_command",command:"scoreboard players set @s mesiya_talk 1001"}}]
execute as @a[scores={boss5_talk=320}] at @s run tellraw @s ["",{text:"[道具屋の説明を聞く]",color:"green",click_event:{action:"run_command",command:"scoreboard players set @s douguya_talk 1001"}}]
execute as @a[scores={boss5_talk=320}] at @s run tellraw @s ["",{text:"[鍛冶屋の説明を聞く]",color:"green",click_event:{action:"run_command",command:"scoreboard players set @s kajiya_talk 1001"}}]
execute as @a[scores={boss5_talk=1000}] at @s run scoreboard players set @s kajiya_talk 0
execute as @a[scores={boss5_talk=1000}] at @s run scoreboard players set @s gacha_talk 0
execute as @a[scores={boss5_talk=1000}] at @s run scoreboard players set @s mesiya_talk 0
execute as @a[scores={boss5_talk=1000}] at @s run scoreboard players set @s shop_talk 0
execute as @a[scores={boss5_talk=1000}] at @s run scoreboard players set @s douguya_talk 0