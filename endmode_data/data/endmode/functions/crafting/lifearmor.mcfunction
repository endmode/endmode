### CRAFTING ###

### LIFE SHARDS ###
execute as @e[type=item,nbt={Item:{tag:{redstoneessence:1b},Count:2b}}] at @s run execute as @e[type=item,nbt={Item:{tag:{whitediamond:1b},Count:2b}},limit=1,sort=nearest,distance=0..1] at @s if entity @e[tag=magic_armorstand,distance=..1] run summon minecraft:item ~ ~ ~ {Tags:["freshcraft_shardoflife"],Item:{id:"minecraft:stone_shovel",Count:1b,tag:{display:{Name:'{"text":"Shard of Life","color":"dark_red","bold":true}',Lore:['{"text":"The shard to create life it self.","color":"red"}']},HideFlags:63,Unbreakable:1b,CustomModelData:2,shardoflife:1b}}}

execute as @e[tag=freshcraft_shardoflife] at @s run kill @e[type=item,nbt={Item:{tag:{redstoneessence:1b},Count:2b}},limit=1,sort=nearest]
execute as @e[tag=freshcraft_shardoflife] at @s run kill @e[type=item,nbt={Item:{tag:{whitediamond:1b},Count:2b}},limit=1,sort=nearest]
execute as @e[tag=freshcraft_shardoflife] at @s run playsound minecraft:block.beacon.power_select master @a
execute as @e[tag=freshcraft_shardoflife] run tag @s remove freshcraft_shardoflife
execute as @e[type=item,nbt={Item:{tag:{shardoflife:1b}}}] at @s run particle minecraft:dust 1 0 0 1 ~ ~ ~ 0.1 0.1 0.1 0.01 1 force


### CHESTPLATE ###
execute as @e[type=item,nbt={Item:{id:"minecraft:iron_chestplate",Count:1b}}] at @s run execute as @e[type=item,nbt={Item:{tag:{shardoflife:1b},Count:1b}},limit=1,distance=0..1,sort=nearest] at @s if entity @e[tag=magic_armorstand,distance=..1] run summon minecraft:item ~ ~ ~ {Tags:["freshcraft_lifechestplate"],Item:{id:"minecraft:leather_chestplate",Count:1b,tag:{CanDestroy:["minecraft:magenta_carpet"],display:{Name:'{"text":"Life Chestplate","color":"dark_red"}',Lore:['{"text":"Chestplate full of Life.","color":"red"}'],color:10682368},HideFlags:12,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:8,Operation:0,UUIDLeast:226110,UUIDMost:203740,Slot:"chest"},{AttributeName:"generic.armor",Name:"generic.armor",Amount:6,Operation:0,UUIDLeast:68967,UUIDMost:536457,Slot:"chest"}]}}}

execute as @e[tag=freshcraft_lifechestplate] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:iron_chestplate",Count:1b}},limit=1,sort=nearest]
execute as @e[tag=freshcraft_lifechestplate] at @s run kill @e[type=item,nbt={Item:{tag:{shardoflife:1b},Count:1b}},limit=1,sort=nearest]
execute as @e[tag=freshcraft_lifechestplate] at @s run playsound minecraft:block.beacon.power_select master @a
execute as @e[tag=freshcraft_lifechestplate] at @s run playsound minecraft:block.anvil.use master @a
execute as @e[tag=freshcraft_lifechestplate] run tag @s remove freshcraft_lifechestplate


### HELMET ###
execute as @e[type=item,nbt={Item:{id:"minecraft:iron_helmet",Count:1b}}] at @s run execute as @e[type=item,nbt={Item:{tag:{shardoflife:1b},Count:1b}},limit=1,distance=0..1,sort=nearest] at @s if entity @e[tag=magic_armorstand,distance=..1] run summon minecraft:item ~ ~ ~ {Tags:["freshcraft_lifehelmet"],Item:{id:"minecraft:leather_helmet",Count:1b,tag:{CanDestroy:["minecraft:orange_carpet"],display:{Name:'{"text":"Life Helmet","color":"dark_red"}',Lore:['{"text":"Helmet full of Life.","color":"red"}'],color:10682368},HideFlags:12,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:7,Operation:0,UUIDLeast:335424,UUIDMost:584333,Slot:"head"},{AttributeName:"generic.armor",Name:"generic.armor",Amount:2,Operation:0,UUIDLeast:65159,UUIDMost:854024,Slot:"head"}]}}}

execute as @e[tag=freshcraft_lifehelmet] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:iron_helmet",Count:1b}},limit=1,sort=nearest]
execute as @e[tag=freshcraft_lifehelmet] at @s run kill @e[type=item,nbt={Item:{tag:{shardoflife:1b},Count:1b}},limit=1,sort=nearest]
execute as @e[tag=freshcraft_lifehelmet] at @s run playsound minecraft:block.beacon.power_select master @a
execute as @e[tag=freshcraft_lifehelmet] at @s run playsound minecraft:block.anvil.use master @a
execute as @e[tag=freshcraft_lifehelmet] run tag @s remove freshcraft_lifehelmet


### LEGGINGS ###
execute as @e[type=item,nbt={Item:{id:"minecraft:iron_leggings",Count:1b}}] at @s run execute as @e[type=item,nbt={Item:{tag:{shardoflife:1b},Count:1b}},limit=1,distance=0..1,sort=nearest] at @s if entity @e[tag=magic_armorstand,distance=..1] run summon minecraft:item ~ ~ ~ {Tags:["freshcraft_lifeleggings"],Item:{id:"minecraft:leather_leggings",Count:1b,tag:{CanDestroy:["minecraft:white_carpet"],display:{Name:'{"text":"Life Leggings","color":"dark_red"}',Lore:['{"text":"Leggings full of Life.","color":"red"}'],color:10682368},HideFlags:12,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:8,Operation:0,UUIDLeast:785261,UUIDMost:68718,Slot:"legs"},{AttributeName:"generic.armor",Name:"generic.armor",Amount:5,Operation:0,UUIDLeast:825825,UUIDMost:967895,Slot:"legs"}]}}}

execute as @e[tag=freshcraft_lifeleggings] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:iron_leggings",Count:1b}},limit=1,sort=nearest]
execute as @e[tag=freshcraft_lifeleggings] at @s run kill @e[type=item,nbt={Item:{tag:{shardoflife:1b},Count:1b}},limit=1,sort=nearest]
execute as @e[tag=freshcraft_lifeleggings] at @s run playsound minecraft:block.beacon.power_select master @a
execute as @e[tag=freshcraft_lifeleggings] at @s run playsound minecraft:block.anvil.use master @a
execute as @e[tag=freshcraft_lifeleggings] run tag @s remove freshcraft_lifeleggings


### BOOTS ###
execute as @e[type=item,nbt={Item:{id:"minecraft:iron_boots",Count:1b}}] at @s run execute as @e[type=item,nbt={Item:{tag:{shardoflife:1b},Count:1b}},limit=1,distance=0..1,sort=nearest] at @s if entity @e[tag=magic_armorstand,distance=..1] run summon minecraft:item ~ ~ ~ {Tags:["freshcraft_lifeboots"],Item:{id:"minecraft:leather_boots",Count:1b,tag:{CanDestroy:["minecraft:lime_carpet"],display:{Name:'{"text":"Life Boots","color":"dark_red"}',Lore:['{"text":"Boots full of Life.","color":"red"}'],color:10682368},HideFlags:12,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:7,Operation:0,UUIDLeast:933538,UUIDMost:97745,Slot:"feet"},{AttributeName:"generic.armor",Name:"generic.armor",Amount:2,Operation:0,UUIDLeast:31208,UUIDMost:402766,Slot:"feet"}]}}}

execute as @e[tag=freshcraft_lifeboots] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:iron_boots",Count:1b}},limit=1,sort=nearest]
execute as @e[tag=freshcraft_lifeboots] at @s run kill @e[type=item,nbt={Item:{tag:{shardoflife:1b},Count:1b}},limit=1,sort=nearest]
execute as @e[tag=freshcraft_lifeboots] at @s run playsound minecraft:block.beacon.power_select master @a
execute as @e[tag=freshcraft_lifeboots] at @s run playsound minecraft:block.anvil.use master @a
execute as @e[tag=freshcraft_lifeboots] run tag @s remove freshcraft_lifeboots


### ABILITY ###
execute as @a[nbt={Inventory:[{Slot:103b,id:"minecraft:leather_helmet",Count:1b,tag:{CanDestroy:["minecraft:orange_carpet"]}},{Slot:102b,id:"minecraft:leather_chestplate",Count:1b,tag:{CanDestroy:["minecraft:magenta_carpet"]}},{Slot:101b,id:"minecraft:leather_leggings",Count:1b,tag:{CanDestroy:["minecraft:white_carpet"]}},{Slot:100b,id:"minecraft:leather_boots",Count:1b,tag:{CanDestroy:["minecraft:lime_carpet"]}}]}] run tag @s add worn_lifearmor
execute as @a[tag=worn_lifearmor,tag=worn_livingarmor,tag=worn_livelyarmor] run advancement grant @s only adventure:all_life_armors
tag @a remove life_armorcomplete
execute as @a[nbt={Inventory:[{Slot:103b,id:"minecraft:leather_helmet",Count:1b,tag:{CanDestroy:["minecraft:orange_carpet"]}},{Slot:102b,id:"minecraft:leather_chestplate",Count:1b,tag:{CanDestroy:["minecraft:magenta_carpet"]}},{Slot:101b,id:"minecraft:leather_leggings",Count:1b,tag:{CanDestroy:["minecraft:white_carpet"]}},{Slot:100b,id:"minecraft:leather_boots",Count:1b,tag:{CanDestroy:["minecraft:lime_carpet"]}}]}] run tag @s add life_armorcomplete
execute as @a[tag=life_armorcomplete] at @s run particle minecraft:dust 1 0 0 1 ~ ~ ~ 0.2 0.1 0.2 1 5 force