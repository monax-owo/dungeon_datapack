#talk2
scoreboard players remove @a[scores={npc_talk2=0..}] npc_talk2 1
execute as @a[scores={npc_talk2=1000}] at @s run tellraw @s {text:"<原住民A>何だ？聞き忘れた事でもあったのか？"}
execute as @a[scores={npc_talk2=980}] at @s run tellraw @s ["",{text:"[ガチャの説明を聞く]",color:"green",click_event:{action:"run_command",command:"trigger gacha_talk set 1001"}},"\n",{text:"[ショップの説明を聞く]",color:"green",click_event:{action:"run_command",command:"trigger shop_talk set 1001"}},"\n",{text:"[飯屋の説明を聞く]",color:"green",click_event:{action:"run_command",command:"trigger mesiya_talk set 1001"}},"\n",{text:"[道具屋の説明を聞く]",color:"green",click_event:{action:"run_command",command:"trigger douguya_talk set 1001"}},"\n",{text:"[鍛冶屋の説明を聞く]",color:"green",click_event:{action:"run_command",command:"trigger kajiya_talk set 1001"}}]
# execute as @a[scores={npc_talk2=980}] at @s run tellraw @s ["",{text:"[ショップの説明を聞く]",color:"green",click_event:{action:"run_command",command:"scoreboard players set @s shop_talk 1001"}}]
# execute as @a[scores={npc_talk2=980}] at @s run tellraw @s ["",{text:"[飯屋の説明を聞く]",color:"green",click_event:{action:"run_command",command:"scoreboard players set @s mesiya_talk 1001"}}]
# execute as @a[scores={npc_talk2=980}] at @s run tellraw @s ["",{text:"[道具屋の説明を聞く]",color:"green",click_event:{action:"run_command",command:"scoreboard players set @s douguya_talk 1001"}}]
# execute as @a[scores={npc_talk2=980}] at @s run tellraw @s ["",{text:"[鍛冶屋の説明を聞く]",color:"green",click_event:{action:"run_command",command:"scoreboard players set @s kajiya_talk 1001"}}]
execute as @a[scores={npc_talk2=980}] at @s run scoreboard players enable @s gacha_talk
execute as @a[scores={npc_talk2=980}] at @s run scoreboard players enable @s shop_talk
execute as @a[scores={npc_talk2=980}] at @s run scoreboard players enable @s mesiya_talk
execute as @a[scores={npc_talk2=980}] at @s run scoreboard players enable @s douguya_talk
execute as @a[scores={npc_talk2=980}] at @s run scoreboard players enable @s kajiya_talk
execute as @a[scores={npc_talk2=1000}] at @s run scoreboard players set @s gacha_talk 0
execute as @a[scores={npc_talk2=1000}] at @s run scoreboard players set @s shop_talk 0
execute as @a[scores={npc_talk2=1000}] at @s run scoreboard players set @s mesiya_talk 0
execute as @a[scores={npc_talk2=1000}] at @s run scoreboard players set @s douguya_talk 0
execute as @a[scores={npc_talk2=1000}] at @s run scoreboard players set @s kajiya_talk 0

#talk
scoreboard players remove @a[scores={npc_talk=0..}] npc_talk 1
execute as @a[scores={npc_talk=1000}] at @s run tellraw @s {text:"<原住民A>おい、あんたら名前は？"}
execute as @a[scores={npc_talk=970}] at @s run tellraw @s {text:"<原住民A>ユニツー海賊団？そうかあんたらは海賊団か。"}
execute as @a[scores={npc_talk=930}] at @s run tellraw @s {text:"<原住民A>ここにいるってことは状況は把握してるんだろ？"}
execute as @a[scores={npc_talk=890}] at @s run tellraw @s {text:"<原住民A>え？ここを見つけて立ち寄っただけ？"}
execute as @a[scores={npc_talk=850}] at @s run tellraw @s {text:"<原住民A>じゃあ状況を説明するぞ。"}
execute as @a[scores={npc_talk=800}] at @s run tellraw @s {text:"<原住民A>先日この大陸に急に魔物が湧き出てきた。"}
execute as @a[scores={npc_talk=760}] at @s run tellraw @s {text:"<原住民A>それによって俺ら生き残りはこんな狭い洞穴に追いやられちまった"}
execute as @a[scores={npc_talk=710}] at @s run tellraw @s {text:"<原住民A>そこであんたらには魔物の討伐と調査をお願いしたい。"}
execute as @a[scores={npc_talk=670}] at @s run tellraw @s {text:"<原住民A>どうだ？引き受けてくれるか？"}
execute as @a[scores={npc_talk=640}] at @s run tellraw @s {text:"<原住民A>ダメ？流石に無条件とは行かないか。"}
execute as @a[scores={npc_talk=600}] at @s run tellraw @s {text:"<原住民A>じゃあこの地に残された物を俺らに渡してくれたら大量の報酬を出す。"}
execute as @a[scores={npc_talk=550}] at @s run tellraw @s {text:"<原住民A>これでどうだ？"}
execute as @a[scores={npc_talk=500}] at @s run tellraw @s {text:"<原住民A>よし。交渉成立だな。頼んだぞ。"}
execute as @a[scores={npc_talk=460}] at @s run tellraw @s {text:"<原住民A>何かわからないことがあったら聞いてくれ。わかることなら教えてやる。"}
execute as @a[scores={npc_talk=430}] at @s run tellraw @s ["",{text:"[ガチャの説明を聞く]",color:"green",click_event:{action:"run_command",command:"scoreboard players set @s gacha_talk 1001"}}]
execute as @a[scores={npc_talk=430}] at @s run tellraw @s ["",{text:"[ショップの説明を聞く]",color:"green",click_event:{action:"run_command",command:"scoreboard players set @s shop_talk 1001"}}]
execute as @a[scores={npc_talk=430}] at @s run tellraw @s ["",{text:"[飯屋の説明を聞く]",color:"green",click_event:{action:"run_command",command:"scoreboard players set @s mesiya_talk 1001"}}]
execute as @a[scores={npc_talk=430}] at @s run tellraw @s ["",{text:"[道具屋の説明を聞く]",color:"green",click_event:{action:"run_command",command:"scoreboard players set @s douguya_talk 1001"}}]
execute as @a[scores={npc_talk=430}] at @s run tellraw @s ["",{text:"[鍛冶屋の説明を聞く]",color:"green",click_event:{action:"run_command",command:"scoreboard players set @s kajiya_talk 1001"}}]
execute as @a[scores={npc_talk=1000}] at @s run scoreboard players set @s gacha_talk 0
execute as @a[scores={npc_talk=1000}] at @s run scoreboard players set @s shop_talk 0
execute as @a[scores={npc_talk=1000}] at @s run scoreboard players set @s mesiya_talk 0
execute as @a[scores={npc_talk=1000}] at @s run scoreboard players set @s douguya_talk 0
execute as @a[scores={npc_talk=1000}] at @s run scoreboard players set @s kajiya_talk 0
execute as @a[scores={npc_talk=430}] at @s run advancement grant @s only dun:story/negotiation

#ガチャ
scoreboard players remove @a[scores={gacha_talk=0..}] gacha_talk 1
execute as @a[scores={gacha_talk=1000}] at @s run tp @s ~ ~ ~ facing 208 15 -53
execute as @a[scores={gacha_talk=980}] at @s run tellraw @s {text:"<原住民A>この機械か？この土地にそぐわない見た目をしているだろ？"}
execute as @a[scores={gacha_talk=940}] at @s run tellraw @s {text:"<原住民A>コイツはいわゆるオーパーツってやつだ。"}
execute as @a[scores={gacha_talk=900}] at @s run tellraw @s {text:"<原住民A>詳しい仕組みは誰もわからんが、"}
execute as @a[scores={gacha_talk=870}] at @s run tellraw @s {text:"<原住民A>そこにいる神父が売ってるコインを入れれば、装備が出る。"}
execute as @a[scores={gacha_talk=830}] at @s run tellraw @s {text:"<原住民A>過去に伝説の武器が出た記録も残されているから、"}
execute as @a[scores={gacha_talk=800}] at @s run tellraw @s {text:"<原住民A>魔物の討伐に行き詰まったら使ってみるのも良いかもしれんな。"}
execute as @a[scores={gacha_talk=770}] at @s run tellraw @s {text:"<原住民A>他に聞きたいことはあるか？"}
execute as @a[scores={gacha_talk=750}] at @s run tellraw @s ["",{text:"[ガチャの説明を聞く]",color:"green",click_event:{action:"run_command",command:"scoreboard players set @s gacha_talk 1001"}}]
execute as @a[scores={gacha_talk=750}] at @s run tellraw @s ["",{text:"[ショップの説明を聞く]",color:"green",click_event:{action:"run_command",command:"scoreboard players set @s shop_talk 1001"}}]
execute as @a[scores={gacha_talk=750}] at @s run tellraw @s ["",{text:"[飯屋の説明を聞く]",color:"green",click_event:{action:"run_command",command:"scoreboard players set @s mesiya_talk 1001"}}]
execute as @a[scores={gacha_talk=750}] at @s run tellraw @s ["",{text:"[道具屋の説明を聞く]",color:"green",click_event:{action:"run_command",command:"scoreboard players set @s douguya_talk 1001"}}]
execute as @a[scores={gacha_talk=750}] at @s run tellraw @s ["",{text:"[鍛冶屋の説明を聞く]",color:"green",click_event:{action:"run_command",command:"scoreboard players set @s kajiya_talk 1001"}}]
execute as @a[scores={gacha_talk=1000}] at @s run scoreboard players set @s shop_talk 0
execute as @a[scores={gacha_talk=1000}] at @s run scoreboard players set @s mesiya_talk 0
execute as @a[scores={gacha_talk=1000}] at @s run scoreboard players set @s douguya_talk 0
execute as @a[scores={gacha_talk=1000}] at @s run scoreboard players set @s kajiya_talk 0
execute as @a[scores={gacha_talk=1000}] at @s run scoreboard players set @s boss1_talk 0
execute as @a[scores={gacha_talk=1000}] at @s run scoreboard players set @s boss2_talk 0
execute as @a[scores={gacha_talk=1000}] at @s run scoreboard players set @s boss3_talk 0
execute as @a[scores={gacha_talk=1000}] at @s run scoreboard players set @s boss4_talk 0
execute as @a[scores={gacha_talk=1000}] at @s run scoreboard players set @s boss5_talk 0
execute as @a[scores={gacha_talk=1000}] at @s run scoreboard players set @s boss6_talk 0

#ショップ
scoreboard players remove @a[scores={shop_talk=0..}] shop_talk 1
execute as @a[scores={shop_talk=1000}] at @s run tp @s ~ ~ ~ facing 183 14 -44
execute as @a[scores={shop_talk=980}] at @s run tellraw @s {text:"<原住民A>ここか？"}
execute as @a[scores={shop_talk=960}] at @s run tellraw @s {text:"<原住民A>ここはややこしいから一つずつ説明していくぞ。"}
execute as @a[scores={shop_talk=920}] at @s run tellraw @s {text:"<原住民A>ここの右側の売却では調査で手に入れた物を渡せば金が手に入る。"}
execute as @a[scores={shop_talk=880}] at @s run tellraw @s {text:"<原住民A>手に入れたお金は銀行に送られるから、"}
execute as @a[scores={shop_talk=850}] at @s run tellraw @s {text:"<原住民A>使う時は左側の出金で引き出すのを忘れるなよ。"}
execute as @a[scores={shop_talk=810}] at @s run tellraw @s {text:"<原住民A>ちなみに中央の入金では余った通貨を預けることができる。"}
execute as @a[scores={shop_talk=770}] at @s run tellraw @s {text:"<原住民A>通貨は荷物を圧迫するから調査に行く前に預けておくことを進めておく。"}
execute as @a[scores={shop_talk=750}] at @s run tellraw @s {text:"<原住民A>他に聞きたいことはあるか？"}
execute as @a[scores={shop_talk=730}] at @s run tellraw @s ["",{text:"[ガチャの説明を聞く]",color:"green",click_event:{action:"run_command",command:"scoreboard players set @s gacha_talk 1001"}}]
execute as @a[scores={shop_talk=730}] at @s run tellraw @s ["",{text:"[ショップの説明を聞く]",color:"green",click_event:{action:"run_command",command:"scoreboard players set @s shop_talk 1001"}}]
execute as @a[scores={shop_talk=730}] at @s run tellraw @s ["",{text:"[飯屋の説明を聞く]",color:"green",click_event:{action:"run_command",command:"scoreboard players set @s mesiya_talk 1001"}}]
execute as @a[scores={shop_talk=730}] at @s run tellraw @s ["",{text:"[道具屋の説明を聞く]",color:"green",click_event:{action:"run_command",command:"scoreboard players set @s douguya_talk 1001"}}]
execute as @a[scores={shop_talk=730}] at @s run tellraw @s ["",{text:"[鍛冶屋の説明を聞く]",color:"green",click_event:{action:"run_command",command:"scoreboard players set @s kajiya_talk 1001"}}]
execute as @a[scores={shop_talk=1000}] at @s run scoreboard players set @s gacha_talk 0
execute as @a[scores={shop_talk=1000}] at @s run scoreboard players set @s mesiya_talk 0
execute as @a[scores={shop_talk=1000}] at @s run scoreboard players set @s douguya_talk 0
execute as @a[scores={shop_talk=1000}] at @s run scoreboard players set @s kajiya_talk 0
execute as @a[scores={shop_talk=1000}] at @s run scoreboard players set @s boss1_talk 0
execute as @a[scores={shop_talk=1000}] at @s run scoreboard players set @s boss2_talk 0
execute as @a[scores={shop_talk=1000}] at @s run scoreboard players set @s boss3_talk 0
execute as @a[scores={shop_talk=1000}] at @s run scoreboard players set @s boss4_talk 0
execute as @a[scores={shop_talk=1000}] at @s run scoreboard players set @s boss5_talk 0
execute as @a[scores={shop_talk=1000}] at @s run scoreboard players set @s boss6_talk 0

#飯屋
scoreboard players remove @a[scores={mesiya_talk=0..}] mesiya_talk 1
execute as @a[scores={mesiya_talk=1000}] at @s run tp @s ~ ~ ~ facing 200 14 -44
execute as @a[scores={mesiya_talk=980}] at @s run tellraw @s {text:"<原住民A>ここか？"}
execute as @a[scores={mesiya_talk=960}] at @s run tellraw @s {text:"<原住民A>ここは飯屋。"}
execute as @a[scores={mesiya_talk=930}] at @s run tellraw @s {text:"<原住民A>右側では飲み物を。左側では食べ物を買うことができる。"}
execute as @a[scores={mesiya_talk=890}] at @s run tellraw @s {text:"<原住民A>コイツらの売る物は凄くてな、"}
execute as @a[scores={mesiya_talk=860}] at @s run tellraw @s {text:"<原住民A>一部の商品は特別な効果が手に入れられたりするんだ。"}
execute as @a[scores={mesiya_talk=820}] at @s run tellraw @s {text:"<原住民A>魔物の討伐に行き詰まった時に利用するのも手の一つだろうな。"}
execute as @a[scores={mesiya_talk=780}] at @s run tellraw @s {text:"<原住民A>買う時には銀行から通貨を持ってくるのを忘れないようにな。"}
execute as @a[scores={mesiya_talk=750}] at @s run tellraw @s {text:"<原住民A>他に聞きたいことはあるか？"}
execute as @a[scores={mesiya_talk=730}] at @s run tellraw @s ["",{text:"[ガチャの説明を聞く]",color:"green",click_event:{action:"run_command",command:"scoreboard players set @s gacha_talk 1001"}}]
execute as @a[scores={mesiya_talk=730}] at @s run tellraw @s ["",{text:"[ショップの説明を聞く]",color:"green",click_event:{action:"run_command",command:"scoreboard players set @s shop_talk 1001"}}]
execute as @a[scores={mesiya_talk=730}] at @s run tellraw @s ["",{text:"[飯屋の説明を聞く]",color:"green",click_event:{action:"run_command",command:"scoreboard players set @s mesiya_talk 1001"}}]
execute as @a[scores={mesiya_talk=730}] at @s run tellraw @s ["",{text:"[道具屋の説明を聞く]",color:"green",click_event:{action:"run_command",command:"scoreboard players set @s douguya_talk 1001"}}]
execute as @a[scores={mesiya_talk=730}] at @s run tellraw @s ["",{text:"[鍛冶屋の説明を聞く]",color:"green",click_event:{action:"run_command",command:"scoreboard players set @s kajiya_talk 1001"}}]
execute as @a[scores={mesiya_talk=1000}] at @s run scoreboard players set @s gacha_talk 0
execute as @a[scores={mesiya_talk=1000}] at @s run scoreboard players set @s shop_talk 0
execute as @a[scores={mesiya_talk=1000}] at @s run scoreboard players set @s douguya_talk 0
execute as @a[scores={mesiya_talk=1000}] at @s run scoreboard players set @s kajiya_talk 0
execute as @a[scores={mesiya_talk=1000}] at @s run scoreboard players set @s boss1_talk 0
execute as @a[scores={mesiya_talk=1000}] at @s run scoreboard players set @s boss2_talk 0
execute as @a[scores={mesiya_talk=1000}] at @s run scoreboard players set @s boss3_talk 0
execute as @a[scores={mesiya_talk=1000}] at @s run scoreboard players set @s boss4_talk 0
execute as @a[scores={mesiya_talk=1000}] at @s run scoreboard players set @s boss5_talk 0
execute as @a[scores={mesiya_talk=1000}] at @s run scoreboard players set @s boss6_talk 0

#道具屋
scoreboard players remove @a[scores={douguya_talk=0..}] douguya_talk 1
execute as @a[scores={douguya_talk=1000}] at @s run tp @s ~ ~ ~ facing 200 14 -62
execute as @a[scores={douguya_talk=980}] at @s run tellraw @s {text:"<原住民A>ここか？"}
execute as @a[scores={douguya_talk=960}] at @s run tellraw @s {text:"<原住民A>ここは道具屋。"}
execute as @a[scores={douguya_talk=930}] at @s run tellraw @s {text:"<原住民A>正確には右が道具屋で左が矢師なんだが、俺らはまとめて道具屋って呼んでた。"}
execute as @a[scores={douguya_talk=880}] at @s run tellraw @s {text:"<原住民A>道具屋ではありがたい物が買える。"}
execute as @a[scores={douguya_talk=840}] at @s run tellraw @s {text:"<原住民A>中でも不死のトーテムなんかは凄いぞ。"}
execute as @a[scores={douguya_talk=800}] at @s run tellraw @s {text:"<原住民A>あれを手に持っておくだけで一回死を免れることができる。"}
execute as @a[scores={douguya_talk=760}] at @s run tellraw @s {text:"<原住民A>そして、矢師の方は名前の通り矢を売ってくれる。"}
execute as @a[scores={douguya_talk=720}] at @s run tellraw @s {text:"<原住民A>あの矢師はなかなか特殊でな、毒を塗った矢なんかを売ってたりする。"}
execute as @a[scores={douguya_talk=670}] at @s run tellraw @s {text:"<原住民A>まあ道具も矢も持っておくに越したことは無いからな。"}
execute as @a[scores={douguya_talk=630}] at @s run tellraw @s {text:"<原住民A>金に余裕がある時に買ってみると良い。"}
execute as @a[scores={douguya_talk=600}] at @s run tellraw @s {text:"<原住民A>他に聞きたいことはあるか？"}
execute as @a[scores={douguya_talk=580}] at @s run tellraw @s ["",{text:"[ガチャの説明を聞く]",color:"green",click_event:{action:"run_command",command:"scoreboard players set @s gacha_talk 1001"}}]
execute as @a[scores={douguya_talk=580}] at @s run tellraw @s ["",{text:"[ショップの説明を聞く]",color:"green",click_event:{action:"run_command",command:"scoreboard players set @s shop_talk 1001"}}]
execute as @a[scores={douguya_talk=580}] at @s run tellraw @s ["",{text:"[飯屋の説明を聞く]",color:"green",click_event:{action:"run_command",command:"scoreboard players set @s mesiya_talk 1001"}}]
execute as @a[scores={douguya_talk=580}] at @s run tellraw @s ["",{text:"[道具屋の説明を聞く]",color:"green",click_event:{action:"run_command",command:"scoreboard players set @s douguya_talk 1001"}}]
execute as @a[scores={douguya_talk=580}] at @s run tellraw @s ["",{text:"[鍛冶屋の説明を聞く]",color:"green",click_event:{action:"run_command",command:"scoreboard players set @s kajiya_talk 1001"}}]
execute as @a[scores={douguya_talk=1000}] at @s run scoreboard players set @s gacha_talk 0
execute as @a[scores={douguya_talk=1000}] at @s run scoreboard players set @s shop_talk 0
execute as @a[scores={douguya_talk=1000}] at @s run scoreboard players set @s mesiya_talk 0
execute as @a[scores={douguya_talk=1000}] at @s run scoreboard players set @s kajiya_talk 0
execute as @a[scores={douguya_talk=1000}] at @s run scoreboard players set @s boss1_talk 0
execute as @a[scores={douguya_talk=1000}] at @s run scoreboard players set @s boss2_talk 0
execute as @a[scores={douguya_talk=1000}] at @s run scoreboard players set @s boss3_talk 0
execute as @a[scores={douguya_talk=1000}] at @s run scoreboard players set @s boss4_talk 0
execute as @a[scores={douguya_talk=1000}] at @s run scoreboard players set @s boss5_talk 0
execute as @a[scores={douguya_talk=1000}] at @s run scoreboard players set @s boss6_talk 0

#鍛冶屋
scoreboard players remove @a[scores={kajiya_talk=0..}] kajiya_talk 1
execute as @a[scores={kajiya_talk=1000}] at @s run tp @s ~ ~ ~ facing 183 14 -60
execute as @a[scores={kajiya_talk=980}] at @s run tellraw @s {text:"<原住民A>実はこの地に来る外界の人間はあんたらが最初じゃなくてな。"}
execute as @a[scores={kajiya_talk=940}] at @s run tellraw @s {text:"<原住民A>ここにいる鍛冶職人が最初の人間なんだ。"}
execute as @a[scores={kajiya_talk=900}] at @s run tellraw @s {text:"<原住民A>コイツはなかなか変わっててな、"}
execute as @a[scores={kajiya_talk=870}] at @s run tellraw @s {text:"<原住民A>つい数週間前に「俺は修理専門の鍛冶屋なんだ！決して装備を造ったりはしない！」"}
execute as @a[scores={kajiya_talk=820}] at @s run tellraw @s {text:"<原住民A>なんて言い張りやがるぐらいだ。"}
execute as @a[scores={kajiya_talk=790}] at @s run tellraw @s {text:"<原住民A>まあこの地に住み着く時点で、若干変なやつだってのは覚悟してたがな。"}
execute as @a[scores={kajiya_talk=750}] at @s run tellraw @s {text:"<原住民A>でも困ったことに修理の腕は確かだ。防具が壊れそうになったら来てみると良い。"}
execute as @a[scores={kajiya_talk=710}] at @s run tellraw @s {text:"<原住民A>お互いに外の人間なのもあって話が合うかもしれんしな。"}
execute as @a[scores={kajiya_talk=670}] at @s run tellraw @s {text:"<原住民A>あと装備を装飾したい時もここに来ると良い。"}
execute as @a[scores={kajiya_talk=630}] at @s run tellraw @s {text:"<原住民A>アイツの弟子が鍛冶型を売ってくれているからな。"}
execute as @a[scores={kajiya_talk=590}] at @s run tellraw @s {text:"<原住民A>他に聞きたいことはあるか？"}
execute as @a[scores={kajiya_talk=580}] at @s run tellraw @s ["",{text:"[ガチャの説明を聞く]",color:"green",click_event:{action:"run_command",command:"scoreboard players set @s gacha_talk 1001"}}]
execute as @a[scores={kajiya_talk=580}] at @s run tellraw @s ["",{text:"[ショップの説明を聞く]",color:"green",click_event:{action:"run_command",command:"scoreboard players set @s shop_talk 1001"}}]
execute as @a[scores={kajiya_talk=580}] at @s run tellraw @s ["",{text:"[飯屋の説明を聞く]",color:"green",click_event:{action:"run_command",command:"scoreboard players set @s mesiya_talk 1001"}}]
execute as @a[scores={kajiya_talk=580}] at @s run tellraw @s ["",{text:"[道具屋の説明を聞く]",color:"green",click_event:{action:"run_command",command:"scoreboard players set @s douguya_talk 1001"}}]
execute as @a[scores={kajiya_talk=580}] at @s run tellraw @s ["",{text:"[鍛冶屋の説明を聞く]",color:"green",click_event:{action:"run_command",command:"scoreboard players set @s kajiya_talk 1001"}}]
execute as @a[scores={kajiya_talk=1000}] at @s run scoreboard players set @s gacha_talk 0
execute as @a[scores={kajiya_talk=1000}] at @s run scoreboard players set @s shop_talk 0
execute as @a[scores={kajiya_talk=1000}] at @s run scoreboard players set @s mesiya_talk 0
execute as @a[scores={kajiya_talk=1000}] at @s run scoreboard players set @s douguya_talk 0
execute as @a[scores={kajiya_talk=1000}] at @s run scoreboard players set @s boss1_talk 0
execute as @a[scores={kajiya_talk=1000}] at @s run scoreboard players set @s boss2_talk 0
execute as @a[scores={kajiya_talk=1000}] at @s run scoreboard players set @s boss3_talk 0
execute as @a[scores={kajiya_talk=1000}] at @s run scoreboard players set @s boss4_talk 0
execute as @a[scores={kajiya_talk=1000}] at @s run scoreboard players set @s boss5_talk 0
execute as @a[scores={kajiya_talk=1000}] at @s run scoreboard players set @s boss6_talk 0