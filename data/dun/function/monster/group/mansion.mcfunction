# 

execute store result score #value dun.rand run random value 1..20

execute if score #value dun.rand matches 1..3 run function dun:monster/summon/evoker
execute if score #value dun.rand matches 4..7 run function dun:monster/summon/zombie
execute if score #value dun.rand matches 7..12 run function dun:monster/summon/pillager
execute if score #value dun.rand matches 13..20 run function dun:monster/summon/vindicator
