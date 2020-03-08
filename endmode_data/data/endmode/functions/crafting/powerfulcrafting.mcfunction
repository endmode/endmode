### CRAFTING ###
execute as @e[type=item,nbt={Item:{id:"minecraft:blaze_rod",Count:2b}}] at @s run execute as @e[type=item,nbt={Item:{id:"minecraft:obsidian",Count:12b}},limit=1,distance=0..1,sort=nearest] if block ~ ~-1 ~ emerald_block run summon minecraft:item ~ ~ ~ {Tags:["freshcraft_powerfulcrafting"],Item:{id:"minecraft:armor_stand",Count:1b,tag:{display:{Name:'{"text":"Powerful Crafting","color":"dark_aqua","bold":true}',Lore:['{"text":"Used for magical crafting","color":"blue"}']},HideFlags:63,CustomModelData:2,Enchantments:[{id:"minecraft:protection",lvl:1s}],EntityTag:{CustomNameVisible:1b,Invulnerable:1b,ShowArms:0b,Small:0b,Marker:0b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["magic_armorstand"],CustomName:'{"text":"Powerful Crafting","color":"dark_aqua","bold":true}'}}}}

execute as @e[tag=freshcraft_powerfulcrafting] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:blaze_rod",Count:2b}},limit=1,sort=nearest]
execute as @e[tag=freshcraft_powerfulcrafting] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:obsidian",Count:12b}},limit=1,sort=nearest]
execute as @e[tag=freshcraft_powerfulcrafting] at @s run playsound minecraft:block.enchantment_table.use master @a
execute as @e[tag=freshcraft_powerfulcrafting] run tag @s remove freshcraft_powerfulcrafting


### ABILITY ###
execute as @e[tag=magic_armorstand] at @s run tp @s ~ ~ ~ ~-3 ~
execute as @e[tag=magic_armorstand] at @s run particle minecraft:end_rod ~ ~1 ~ 0.1 0.1 0.1 0.1 2 force
execute as @e[tag=magic_armorstand] at @s run particle minecraft:dust 1 0 1 1 ~ ~1 ~ 0.2 0.2 0.2 0.01 5 force
execute as @a[tag=sneaking] at @s if entity @e[tag=magic_armorstand,distance=..0.5] run summon minecraft:item ~ ~ ~ {Tags:["freshcraft_powerfulcrafting"],Item:{id:"minecraft:armor_stand",Count:1b,tag:{display:{Name:'{"text":"Powerful Crafting","color":"dark_aqua","bold":true}',Lore:['{"text":"Used for magical crafting","color":"blue"}']},HideFlags:63,CustomModelData:2,Enchantments:[{id:"minecraft:protection",lvl:1s}],EntityTag:{CustomNameVisible:1b,Invulnerable:1b,ShowArms:0b,Small:0b,Marker:0b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["magic_armorstand"],CustomName:'{"text":"Powerful Crafting","color":"dark_aqua","bold":true}'}}}}
execute as @a[tag=sneaking] at @s if entity @e[tag=magic_armorstand,distance=..0.5] run kill @e[tag=magic_armorstand,distance=..0.5]