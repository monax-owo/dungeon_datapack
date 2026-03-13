execute positioned 191 13.0 -44.7 as @a[scores={click_villager=1..},distance=..3,advancements={dun:story/boss3=true,dun:story/boss4=true,dun:story/boss5=false}] run scoreboard players set @s boss4_talk 1001
scoreboard players remove @a[scores={boss4_talk=0..}] boss4_talk 1
execute as @a[scores={boss4_talk=1000}] at @s run tellraw @s {text:"<原住民A>砂漠を通り抜けたら次に地獄が待ち構えていた？"}
execute as @a[scores={boss4_talk=960}] at @s run tellraw @s {text:"<原住民A>そしてその地獄で化け物と戦ったと。"}
execute as @a[scores={boss4_talk=920}] at @s run tellraw @s {text:"<原住民A>あんたら疲れからまぼろしでも見ているんじゃないのか？"}
execute as @a[scores={boss4_talk=880}] at @s run tellraw @s {text:"<原住民A>まあ今俺らはあんたらを信じることしかできないからな。"}
execute as @a[scores={boss4_talk=840}] at @s run tellraw @s {text:"<原住民A>一旦信じておこう。"}
execute as @a[scores={boss4_talk=810}] at @s run tellraw @s {text:"<原住民A>ちなみにその化け物ってのはどんな見た目なんだ？"}
execute as @a[scores={boss4_talk=770}] at @s run tellraw @s {text:"<原住民A>浮遊する黒い三つ首のガイコツ..."}
execute as @a[scores={boss4_talk=720}] at @s run tellraw @s {text:"<原住民A>やっぱりあんたら一回休んだ方が良いと思うぞ..."}
execute as @a[scores={boss4_talk=680}] at @s run tellraw @s {text:"<原住民A>それはそうと、何か聞きたいことはあるか？"}
execute as @a[scores={boss4_talk=650}] at @s run tellraw @s {text:"<原住民A>このあたりの設備の話なら教えてやれるぞ。"}
execute as @a[scores={boss4_talk=630}] at @s run tellraw @s ["",{text:"[ガチャの説明を聞く]",color:"green",click_event:{action:"run_command",command:"trigger gacha_talk set 1001"}},"\n",{text:"[ショップの説明を聞く]",color:"green",click_event:{action:"run_command",command:"trigger shop_talk set 1001"}},"\n",{text:"[飯屋の説明を聞く]",color:"green",click_event:{action:"run_command",command:"trigger mesiya_talk set 1001"}},"\n",{text:"[道具屋の説明を聞く]",color:"green",click_event:{action:"run_command",command:"trigger douguya_talk set 1001"}},"\n",{text:"[鍛冶屋の説明を聞く]",color:"green",click_event:{action:"run_command",command:"trigger kajiya_talk set 1001"}}]
execute as @a[scores={boss4_talk=630}] at @s run scoreboard players enable @s gacha_talk
execute as @a[scores={boss4_talk=630}] at @s run scoreboard players enable @s shop_talk
execute as @a[scores={boss4_talk=630}] at @s run scoreboard players enable @s mesiya_talk
execute as @a[scores={boss4_talk=630}] at @s run scoreboard players enable @s douguya_talk
execute as @a[scores={boss4_talk=630}] at @s run scoreboard players enable @s kajiya_talk
execute as @a[scores={boss4_talk=1000}] at @s run scoreboard players set @s kajiya_talk 0
execute as @a[scores={boss4_talk=1000}] at @s run scoreboard players set @s gacha_talk 0
execute as @a[scores={boss4_talk=1000}] at @s run scoreboard players set @s mesiya_talk 0
execute as @a[scores={boss4_talk=1000}] at @s run scoreboard players set @s shop_talk 0
execute as @a[scores={boss4_talk=1000}] at @s run scoreboard players set @s douguya_talk 0