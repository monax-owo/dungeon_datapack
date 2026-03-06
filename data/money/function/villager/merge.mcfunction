# {index: int, data: data}

$data modify entity @n[tag=villager.potion] Offers.Recipes[$(index)] merge from storage money: villager.potion.recipes[$(index)]
$data modify entity @n[tag=villager.coin] Offers.Recipes[$(index)] merge from $(data)[$(index)]
