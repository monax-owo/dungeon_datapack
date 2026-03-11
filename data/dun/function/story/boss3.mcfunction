execute positioned 191 13.0 -44.7 as @a[scores={click_villager=1..},distance=..3,advancements={dun:story/boss2=true,dun:story/boss3=true,dun:story/boss4=false}] run scoreboard players set @s boss3_talk 1001
scoreboard players remove @a[scores={boss3_talk=0..}] boss3_talk 1
execute as @a[scores={boss3_talk=1000}] at @s run tellraw @s {text:"<原住民A>海底神殿を出た後には砂漠があっただと？"}
execute as @a[scores={boss3_talk=960}] at @s run tellraw @s {text:"<原住民A>全くこの地の地理はどうなっているんだ？"}
execute as @a[scores={boss3_talk=920}] at @s run tellraw @s {text:"<原住民A>で、その砂漠にはピラミッドがあって、そこで大きなミイラと戦った。"}
execute as @a[scores={boss3_talk=870}] at @s run tellraw @s {text:"<原住民A>待てよ？その王ってもしかしてこれじゃないか？"}
execute as @a[scores={boss3_talk=830}] at @s run tellraw @s {text:"<原住民A>「海を統べた者は、次に砂漠の大墓に邪悪なる王を封印した。」"}
execute as @a[scores={boss3_talk=780}] at @s run tellraw @s {text:"<原住民A>この地に伝わる伝説の一節だ。"}
execute as @a[scores={boss3_talk=760}] at @s run tellraw @s {text:"<原住民A>もしかしたらあんたらこの「邪悪なる王」を倒したのかもな！"}
execute as @a[scores={boss3_talk=720}] at @s run tellraw @s {text:"<原住民A>流石にそんなわけないか。復活でもさせないと会うことすらできないだろうしな。"}
execute as @a[scores={boss3_talk=670}] at @s run tellraw @s {text:"<原住民A>まあとりあえずこれでこの地の調査が進んだ。ありがとう。"}
execute as @a[scores={boss3_talk=630}] at @s run tellraw @s {text:"<原住民A>それはそうと、何か聞きたいことはあるか？"}
execute as @a[scores={boss3_talk=600}] at @s run tellraw @s {text:"<原住民A>このあたりの設備の話なら教えてやれるぞ。"}
execute as @a[scores={boss3_talk=580}] at @s run tellraw @s ["",{text:"[ガチャの説明を聞く]",color:"green",click_event:{action:"run_command",command:"scoreboard players set @s gacha_talk 1001"}}]
execute as @a[scores={boss3_talk=580}] at @s run tellraw @s ["",{text:"[ショップの説明を聞く]",color:"green",click_event:{action:"run_command",command:"scoreboard players set @s shop_talk 1001"}}]
execute as @a[scores={boss3_talk=580}] at @s run tellraw @s ["",{text:"[飯屋の説明を聞く]",color:"green",click_event:{action:"run_command",command:"scoreboard players set @s mesiya_talk 1001"}}]
execute as @a[scores={boss3_talk=580}] at @s run tellraw @s ["",{text:"[道具屋の説明を聞く]",color:"green",click_event:{action:"run_command",command:"scoreboard players set @s douguya_talk 1001"}}]
execute as @a[scores={boss3_talk=580}] at @s run tellraw @s ["",{text:"[鍛冶屋の説明を聞く]",color:"green",click_event:{action:"run_command",command:"scoreboard players set @s kajiya_talk 1001"}}]
execute as @a[scores={boss3_talk=1000}] at @s run scoreboard players set @s kajiya_talk 0
execute as @a[scores={boss3_talk=1000}] at @s run scoreboard players set @s gacha_talk 0
execute as @a[scores={boss3_talk=1000}] at @s run scoreboard players set @s mesiya_talk 0
execute as @a[scores={boss3_talk=1000}] at @s run scoreboard players set @s shop_talk 0
execute as @a[scores={boss3_talk=1000}] at @s run scoreboard players set @s douguya_talk 0