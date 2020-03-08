### CRAFTING ###
execute as @a[nbt={Inventory:[{id:"minecraft:zombie_horse_spawn_egg"}]},gamemode=survival] run tag @s add cookedegg
execute as @a[tag=cookedegg] run give @s minecraft:bread{display:{Name:'{"text":"Cooked Egg","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'},CustomModelData:1} 1
execute as @a[tag=cookedegg] run clear @s zombie_horse_spawn_egg 1
execute as @a[tag=cookedegg] run tag @s remove cookedegg