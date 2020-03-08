### CRAFTING ###

### FLINT AXE ###
execute as @a[nbt={Inventory:[{id:"minecraft:donkey_spawn_egg"}]},gamemode=survival] run tag @s add flintaxe
execute as @a[tag=flintaxe] run give @s minecraft:wooden_axe{display:{Name:'{"text":"Flint Hatchet","color":"white","italic":false}'},CustomModelData:1} 1
execute as @a[tag=flintaxe] run clear @s donkey_spawn_egg 1
execute as @a[tag=flintaxe] run tag @s remove flintaxe


### FLINT SHORTSWORD ###
execute as @a[nbt={Inventory:[{id:"minecraft:cod_spawn_egg"}]},gamemode=survival] run tag @s add flintsword
execute as @a[tag=flintsword] run give @s minecraft:wooden_sword{display:{Name:'{"text":"Flint Shortsword","color":"white","italic":false}'},CustomModelData:1} 1
execute as @a[tag=flintsword] run clear @s cod_spawn_egg 1
execute as @a[tag=flintsword] run tag @s remove flintsword