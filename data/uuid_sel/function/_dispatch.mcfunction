# 

data modify entity @n[tag=uuid_sel.aec,type=area_effect_cloud] Owner set from entity @s data.UUID
execute as @n[tag=uuid_sel.aec] on origin as @n[distance=0] run tag @s add uuid_sel.holder
execute as @n[tag=uuid_sel.aec] on origin run tag @s add uuid_sel.owner

# UUIDを保持しているエンティティ[tag=hoge]なら関数を実行する
# @n[tag=uuid_sel.holder]でUUIDを保持しているエンティティ
# @n[tag=uuid_sel.owner]でUUIDの参照先のエンティティ
# Example:
# execute if entity @s[tag=hoge] run function hoo:bar
# 眼の前にテレポート+足元にパーティクル:
# execute at @n[tag=uuid_sel.owner] run tp @n[tag=uuid_sel.holder] ^ ^ ^1
# execute at @n[tag=uuid_sel.owner] run particle dust{color:0,scale:1}

tag @a remove uuid_sel.holder
tag @a remove uuid_sel.owner
