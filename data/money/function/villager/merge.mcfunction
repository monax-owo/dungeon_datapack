# {tag: string, index: int, data: data}

$data modify entity @n[tag=villager.$(tag)] Offers.Recipes[$(index)] merge from storage money: villager.$(tag).recipes[$(index)]
