#called by advancement :: recipe_checks/flint_hatchet

loot spawn ~ ~ ~ loot endmode:items/flint_hatchet
function endmode:crafting/apply_vanilla_multiplier
recipe take @s endmode:flint_hatchet
advancement revoke @s only endmode:recipe_checks/flint_hatchet
