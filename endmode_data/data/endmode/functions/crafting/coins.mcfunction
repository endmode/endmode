### GOLD COIN ###
execute as @a[nbt={Inventory:[{id:"minecraft:bat_spawn_egg"}]},gamemode=survival] run tag @s add goldcoin
execute as @a[tag=goldcoin] run give @s minecraft:gold_nugget{display:{Name:'{"text":"Gold Coin","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'},CustomModelData:2,goldcoin:1b} 1
execute as @a[tag=goldcoin] run clear @s bat_spawn_egg 1
execute as @a[tag=goldcoin] run tag @s remove goldcoin








