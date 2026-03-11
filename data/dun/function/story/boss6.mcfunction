execute positioned 191 13.0 -44.7 as @a[scores={click_villager=1..},distance=..3,advancements={dun:story/boss5=true,dun:story/boss6=true}] run scoreboard players set @s boss6_talk 1001
scoreboard players remove @a[scores={boss6_talk=0..}] boss6_talk 1
execute as @a[scores={boss6_talk=1000}] at @s run tellraw @s {text:"<原住民A>何？もう一度黒い龍を倒したら"}
execute as @a[scores={boss6_talk=970}] at @s run tellraw @s {text:"<原住民A>地中から強靭で巨大な体をした化け物が現れた？"}
execute as @a[scores={boss6_talk=930}] at @s run tellraw @s {text:"<原住民A>それは本当に申し訳ないことをさせてしまったな。"}
execute as @a[scores={boss6_talk=890}] at @s run tellraw @s {text:"<原住民A>そしてそれをどうしてきたんだ？"}
execute as @a[scores={boss6_talk=850}] at @s run tellraw @s {text:"<原住民A>倒した？その化け物を？"}
execute as @a[scores={boss6_talk=810}] at @s run tellraw @s {text:"<原住民A>なんてこった。あんたら敵なしか？"}
execute as @a[scores={boss6_talk=770}] at @s run tellraw @s {text:"<原住民A>まあ、これで魔物の討伐も終わり"}
execute as @a[scores={boss6_talk=730}] at @s run tellraw @s {text:"<原住民A>と言いたいところなのだが..."}
execute as @a[scores={boss6_talk=680}] at @s run tellraw @s {text:"<原住民A>どうやらまだ魔物は沸き続けてしまっている。"}
execute as @a[scores={boss6_talk=640}] at @s run tellraw @s {text:"<原住民A>そこでだ、俺からあんたらに相談だ。"}
execute as @a[scores={boss6_talk=600}] at @s run tellraw @s {text:"<原住民A>あんたらここの洞穴の傭兵にならないか？"}
execute as @a[scores={boss6_talk=560}] at @s run tellraw @s {text:"<原住民A>当然報酬は出すし今まで通り物の売買だって続けよう。"}
execute as @a[scores={boss6_talk=500}] at @s run tellraw @s {text:"<原住民A>ダメなのか？ちなみに理由を聞いても良いか？"}
execute as @a[scores={boss6_talk=460}] at @s run tellraw @s {text:"<原住民A>そうか、そういえばあんたらは海賊だったな。"}
execute as @a[scores={boss6_talk=420}] at @s run tellraw @s {text:"<原住民A>確かに海賊だとしたらこの地に留まるわけには行かないな。"}
execute as @a[scores={boss6_talk=380}] at @s run tellraw @s {text:"<原住民A>わかった。用事が終わったら海に出てもらって大丈夫だ。"}
execute as @a[scores={boss6_talk=340}] at @s run tellraw @s {text:"<原住民A>でも、たまにはこの地に顔を出してくれると助かるよ。"}
execute as @a[scores={boss6_talk=300}] at @s run tellraw @s {text:"<原住民A>あんたらがいると商人のみんなも顔が明るくなるんでな。"}
execute as @a[scores={boss6_talk=260}] at @s run tellraw @s {text:"<原住民A>それはそうと、何か聞きたいことはあるか？"}
execute as @a[scores={boss6_talk=230}] at @s run tellraw @s {text:"<原住民A>このあたりの設備の話なら教えてやれるぞ。"}
execute as @a[scores={boss6_talk=210}] at @s run tellraw @s ["",{text:"[ガチャの説明を聞く]",color:"green",click_event:{action:"run_command",command:"scoreboard players set @s gacha_talk 1001"}}]
execute as @a[scores={boss6_talk=210}] at @s run tellraw @s ["",{text:"[ショップの説明を聞く]",color:"green",click_event:{action:"run_command",command:"scoreboard players set @s shop_talk 1001"}}]
execute as @a[scores={boss6_talk=210}] at @s run tellraw @s ["",{text:"[飯屋の説明を聞く]",color:"green",click_event:{action:"run_command",command:"scoreboard players set @s mesiya_talk 1001"}}]
execute as @a[scores={boss6_talk=210}] at @s run tellraw @s ["",{text:"[道具屋の説明を聞く]",color:"green",click_event:{action:"run_command",command:"scoreboard players set @s douguya_talk 1001"}}]
execute as @a[scores={boss6_talk=210}] at @s run tellraw @s ["",{text:"[鍛冶屋の説明を聞く]",color:"green",click_event:{action:"run_command",command:"scoreboard players set @s kajiya_talk 1001"}}]
execute as @a[scores={boss6_talk=1000}] at @s run scoreboard players set @s kajiya_talk 0
execute as @a[scores={boss6_talk=1000}] at @s run scoreboard players set @s gacha_talk 0
execute as @a[scores={boss6_talk=1000}] at @s run scoreboard players set @s mesiya_talk 0
execute as @a[scores={boss6_talk=1000}] at @s run scoreboard players set @s shop_talk 0
execute as @a[scores={boss6_talk=1000}] at @s run scoreboard players set @s douguya_talk 0