# 

execute if score @s dun.floor = #mineshaft dun.floor run advancement grant @s only dun:floor/plain
execute if score @s dun.floor = #jungle dun.floor run advancement grant @s only dun:floor/mineshaft
execute if score @s dun.floor = #mansion dun.floor run advancement grant @s only dun:floor/jungle
execute if score @s dun.floor = #taiga dun.floor run advancement grant @s only dun:floor/mansion
execute if score @s dun.floor = #frozen_ocean dun.floor run advancement grant @s only dun:floor/taiga
execute if score @s dun.floor = #monument dun.floor run advancement grant @s only dun:floor/frozen_ocean
execute if score @s dun.floor = #desert dun.floor run advancement grant @s only dun:floor/monument
execute if score @s dun.floor = #nether dun.floor run advancement grant @s only dun:floor/desert
execute if score @s dun.floor = #end dun.floor run advancement grant @s only dun:floor/nether
execute if predicate {condition:"entity_properties",entity:"this",predicate:{nbt:{seenCredits:1b}}} run advancement grant @s only dun:floor/end
