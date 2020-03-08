### CRAFTING ###

### CHESTPLATE ###
execute as @e[type=item,nbt={Item:{id:"minecraft:diamond_chestplate",Count:1b}}] at @s run execute as @e[type=item,nbt={Item:{tag:{weirdpearl:1b},Count:50b}},limit=1,distance=0..1,sort=nearest] at @s if entity @e[tag=magic_armorstand,distance=..1] run summon minecraft:item ~ ~ ~ {Tags:["freshcraft_enderchestplate"],Item:{id:"minecraft:leather_chestplate",Count:1b,tag:{CanDestroy:["minecraft:black_wool"],display:{Name:'{"text":"Ender Chestplate","color":"dark_purple"}',Lore:['{"text":"Fused with the power of the Ender."}'],color:9044083},HideFlags:12,CustomModelData:1,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:8,Operation:0,UUIDLeast:29682,UUIDMost:516632,Slot:"chest"},{AttributeName:"generic.armorToughness",Name:"generic.armorToughness",Amount:3,Operation:0,UUIDLeast:467976,UUIDMost:773894,Slot:"chest"}]}}}

execute as @e[tag=freshcraft_enderchestplate] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:diamond_chestplate",Count:1b}},limit=1,sort=nearest,tag=!freshcraft_enderchestplate]
execute as @e[tag=freshcraft_enderchestplate] at @s run kill @e[type=item,nbt={Item:{tag:{weirdpearl:1b},Count:50b}},limit=1,sort=nearest]
execute as @e[tag=freshcraft_enderchestplate] at @s run playsound minecraft:entity.enderman.teleport master @a
execute as @e[tag=freshcraft_enderchestplate] at @s run playsound minecraft:block.anvil.use master @a
execute as @e[tag=freshcraft_enderchestplate] run tag @s remove freshcraft_enderchestplate


### HELMET ###
execute as @e[type=item,nbt={Item:{id:"minecraft:diamond_helmet",Count:1b}}] at @s run execute as @e[type=item,nbt={Item:{tag:{weirdpearl:1b},Count:50b}},limit=1,distance=0..1,sort=nearest] at @s if entity @e[tag=magic_armorstand,distance=..1] run summon minecraft:item ~ ~ ~ {Tags:["freshcraft_enderhelmet"],Item:{id:"minecraft:leather_helmet",Count:1b,tag:{CanDestroy:["minecraft:orange_wool"],display:{Name:'{"text":"Ender Helmet","color":"dark_purple"}',Lore:['{"text":"Fused with the power of the Ender."}'],color:9044083},HideFlags:12,CustomModelData:1,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:3,Operation:0,UUIDLeast:172512,UUIDMost:234333,Slot:"head"},{AttributeName:"generic.armorToughness",Name:"generic.armorToughness",Amount:3,Operation:0,UUIDLeast:650990,UUIDMost:925586,Slot:"head"}]}}}

execute as @e[tag=freshcraft_enderhelmet] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:diamond_helmet",Count:1b}},limit=1,sort=nearest,tag=!freshcraft_enderhelmet]
execute as @e[tag=freshcraft_enderhelmet] at @s run kill @e[type=item,nbt={Item:{tag:{weirdpearl:1b},Count:50b}},limit=1,sort=nearest]
execute as @e[tag=freshcraft_enderhelmet] at @s run playsound minecraft:entity.enderman.teleport master @a
execute as @e[tag=freshcraft_enderhelmet] at @s run playsound minecraft:block.anvil.use master @a
execute as @e[tag=freshcraft_enderhelmet] run tag @s remove freshcraft_enderhelmet


### LEGGINGS ###
execute as @e[type=item,nbt={Item:{id:"minecraft:diamond_leggings",Count:1b}}] at @s run execute as @e[type=item,nbt={Item:{tag:{weirdpearl:1b},Count:50b}},limit=1,distance=0..1,sort=nearest] at @s if entity @e[tag=magic_armorstand,distance=..1] run summon minecraft:item ~ ~ ~ {Tags:["freshcraft_enderleggings"],Item:{id:"minecraft:leather_leggings",Count:1b,tag:{CanDestroy:["minecraft:pink_wool"],display:{Name:'{"text":"Ender Leggings","color":"dark_purple"}',Lore:['{"text":"Fused with the power of the Ender."}'],color:9044083},HideFlags:12,CustomModelData:1,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:6,Operation:0,UUIDLeast:526459,UUIDMost:368406,Slot:"legs"},{AttributeName:"generic.armorToughness",Name:"generic.armorToughness",Amount:3,Operation:0,UUIDLeast:606127,UUIDMost:700224,Slot:"legs"}]}}}

execute as @e[tag=freshcraft_enderleggings] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:diamond_leggings",Count:1b}},limit=1,sort=nearest,tag=!freshcraft_enderleggings]
execute as @e[tag=freshcraft_enderleggings] at @s run kill @e[type=item,nbt={Item:{tag:{weirdpearl:1b},Count:50b}},limit=1,sort=nearest]
execute as @e[tag=freshcraft_enderleggings] at @s run playsound minecraft:entity.enderman.teleport master @a
execute as @e[tag=freshcraft_enderleggings] at @s run playsound minecraft:block.anvil.use master @a
execute as @e[tag=freshcraft_enderleggings] run tag @s remove freshcraft_enderleggings


### BOOTS ###
execute as @e[type=item,nbt={Item:{id:"minecraft:diamond_boots",Count:1b}}] at @s run execute as @e[type=item,nbt={Item:{tag:{weirdpearl:1b},Count:50b}},limit=1,distance=0..1,sort=nearest] at @s if entity @e[tag=magic_armorstand,distance=..1] run summon minecraft:item ~ ~ ~ {Tags:["freshcraft_enderboots"],Item:{id:"minecraft:leather_boots",Count:1b,tag:{CanDestroy:["minecraft:brown_wool"],display:{Name:'{"text":"Ender Boots","color":"dark_purple"}',Lore:['{"text":"Fused with the power of the Ender."}'],color:9044083},HideFlags:12,CustomModelData:1,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:3,Operation:0,UUIDLeast:662146,UUIDMost:135155,Slot:"feet"},{AttributeName:"generic.armorToughness",Name:"generic.armorToughness",Amount:3,Operation:0,UUIDLeast:431700,UUIDMost:146328,Slot:"feet"}]}}}

execute as @e[tag=freshcraft_enderboots] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:diamond_boots",Count:1b}},limit=1,sort=nearest,tag=!freshcraft_enderboots]
execute as @e[tag=freshcraft_enderboots] at @s run kill @e[type=item,nbt={Item:{tag:{weirdpearl:1b},Count:50b}},limit=1,sort=nearest]
execute as @e[tag=freshcraft_enderboots] at @s run playsound minecraft:entity.enderman.teleport master @a
execute as @e[tag=freshcraft_enderboots] at @s run playsound minecraft:block.anvil.use master @a
execute as @e[tag=freshcraft_enderboots] run tag @s remove freshcraft_enderboots


### ABILITY ###
tag @a remove ender_armorcomplete
execute as @a[nbt={Inventory:[{Slot:103b,id:"minecraft:leather_helmet",Count:1b,tag:{CanDestroy:["minecraft:orange_wool"]}},{Slot:102b,id:"minecraft:leather_chestplate",Count:1b,tag:{CanDestroy:["minecraft:black_wool"]}},{Slot:101b,id:"minecraft:leather_leggings",Count:1b,tag:{CanDestroy:["minecraft:pink_wool"]}},{Slot:100b,id:"minecraft:leather_boots",Count:1b,tag:{CanDestroy:["minecraft:brown_wool"]}}]}] run tag @s add ender_armorcomplete
execute as @a[nbt={Inventory:[{Slot:103b,id:"minecraft:diamond_helmet",Count:1b,tag:{CanDestroy:["minecraft:orange_wool"]}},{Slot:102b,id:"minecraft:diamond_chestplate",Count:1b,tag:{CanDestroy:["minecraft:black_wool"]}},{Slot:101b,id:"minecraft:diamond_leggings",Count:1b,tag:{CanDestroy:["minecraft:pink_wool"]}},{Slot:100b,id:"minecraft:diamond_boots",Count:1b,tag:{CanDestroy:["minecraft:brown_wool"]}}]}] run tag @s add ender_armorcomplete
execute as @a[tag=ender_armorcomplete] at @s run particle minecraft:dragon_breath ~ ~ ~ 0.2 0 0.2 0.01 3 force
execute as @a[tag=ender_armorcomplete] run effect give @s minecraft:fire_resistance 1 15 true
execute as @a[tag=ender_armorcomplete] run effect give @s minecraft:night_vision 12 15 true