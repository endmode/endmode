### CRAFTING ###

### BLANK TOTEM ###
execute as @a[nbt={Inventory:[{id:"minecraft:spider_spawn_egg"}]},gamemode=survival] run tag @s add blanktotem
execute as @a[tag=blanktotem] run give @p minecraft:stone_shovel{display:{Name:'{"text":"Blank Totem","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'},HideFlags:63,Unbreakable:1b,CustomModelData:4,blanktotem:1b} 1 
execute as @a[tag=blanktotem] run clear @s spider_spawn_egg 1
execute as @a[tag=blanktotem] run tag @s remove blanktotem


### TOTEM OF UNDYING ###
execute as @e[type=item,nbt={Item:{tag:{blanktotem:1b},Count:1b}}] at @s run tag @e[type=villager,limit=1,sort=nearest,distance=..1] add totemofundyingmaking
execute as @e[tag=totemofundyingmaking] run scoreboard players add @s totemofdie 1
execute as @e[scores={totemofdie=1}] at @s run kill @e[type=item,nbt={Item:{tag:{blanktotem:1b},Count:1b}},limit=1,sort=nearest]
execute as @e[scores={totemofdie=2},tag=totemofundyingmaking] run data merge entity @s {Tags:["totemofundyingmaking2"],ArmorItems:[{},{},{id:"minecraft:totem_of_undying",Count:1b},{}],ArmorDropChances:[0.085F,0.085F,1.000F,0.085F],VillagerData:{level:1,profession:"minecraft:nitwit",type:"minecraft:plains"},Offers:{}}
execute as @e[tag=totemofundyingmaking2] run tag @s remove totemofundyingmaking
execute as @e[scores={totemofdie=1}] at @s run summon minecraft:firework_rocket ~ ~1 ~ {Life:0,LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;187138]},{Type:0,Colors:[I;621057]}]}}}}
execute as @e[tag=totemofundyingmaking2] at @s run particle minecraft:happy_villager ~ ~1 ~ 0.2 0.4 0.2 1 5 force


### CREEPER TOTEM ###
execute as @e[type=item,nbt={Item:{tag:{blanktotem:1b},Count:1b}}] at @s run execute as @e[type=item,nbt={Item:{tag:{whitediamond:1b},Count:1b}},limit=1,sort=nearest,distance=0..1] at @s run execute as @e[type=item,nbt={Item:{id:"minecraft:gunpowder",Count:10b}},limit=1,distance=0..1,sort=nearest] at @s if entity @e[tag=magic_armorstand,distance=..1] run summon minecraft:item ~ ~ ~ {Tags:["freshcraft_creepertotem"],Item:{id:"minecraft:stone_shovel",Count:1b,tag:{CanDestroy:["minecraft:lime_bed"],display:{Name:'{"text":"Creeper Totem","color":"dark_green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'},HideFlags:63,Unbreakable:1b,CustomModelData:5}}}

execute as @e[tag=freshcraft_creepertotem] at @s run kill @e[type=item,nbt={Item:{tag:{blanktotem:1b},Count:1b}},limit=1,sort=nearest]
execute as @e[tag=freshcraft_creepertotem] at @s run kill @e[type=item,nbt={Item:{tag:{whitediamond:1b},Count:1b}},limit=1,sort=nearest]
execute as @e[tag=freshcraft_creepertotem] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:gunpowder",Count:10b}},limit=1,sort=nearest]
execute as @e[tag=freshcraft_creepertotem] at @s run playsound minecraft:entity.creeper.primed master @a
execute as @e[tag=freshcraft_creepertotem] at @s run playsound minecraft:block.enchantment_table.use master @a
execute as @e[tag=freshcraft_creepertotem] run tag @s remove freshcraft_creepertotem


### CREEPER TOTEM | ABILITY ###
execute as @a[nbt={Inventory:[{id:"minecraft:stone_shovel",Count:1b,tag:{CanDestroy:["minecraft:lime_bed"]}}]}] at @s run tag @e[type=creeper,distance=..5] add disabledcreeperlol