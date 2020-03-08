### REDSTONE ESSENCE ###
execute as @e[scores={broke_redore=10..}] if entity @e[tag=diamonddisinfecter] run tag @s add give_restoneessence
execute as @e[tag=give_restoneessence] run give @s minecraft:redstone{display:{Name:'{"text":"Redstone Essence","color":"red"}',Lore:['{"text":"A concentrated bit of Redstone that powers Redstone it self.","color":"red"}']},HideFlags:63,CustomModelData:1,redstoneessence:1b} 3
scoreboard players reset @a[tag=give_restoneessence] broke_redore
execute as @a[tag=give_restoneessence] run tag @s remove give_restoneessence


### CRAFTING ###

### LIVING CHESTPLATE ###
execute as @e[type=item,nbt={Item:{id:"minecraft:iron_chestplate",Count:1b}}] at @s run execute as @e[type=item,nbt={Item:{tag:{redstoneessence:1b},Count:6b}},limit=1,distance=0..1,sort=nearest] at @s if block ~ ~-1 ~ emerald_block run summon minecraft:item ~ ~ ~ {Tags:["freshcraft_livingchestplate"],Item:{id:"minecraft:leather_chestplate",Count:1b,tag:{CanDestroy:["minecraft:black_carpet"],display:{Name:'{"text":"Living Chestplate","color":"red"}',Lore:['{"text":"Looks to be moving by it self.","color":"red"}'],color:16711680},HideFlags:12,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:5,Operation:0,UUIDLeast:31395,UUIDMost:881575,Slot:"chest"},{AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:5,Operation:0,UUIDLeast:583551,UUIDMost:23807,Slot:"chest"}]}}}

execute as @e[tag=freshcraft_livingchestplate] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:iron_chestplate",Count:1b}},limit=1,sort=nearest]
execute as @e[tag=freshcraft_livingchestplate] at @s run kill @e[type=item,nbt={Item:{tag:{redstoneessence:1b},Count:6b}},limit=1,sort=nearest]
execute as @e[tag=freshcraft_livingchestplate] at @s run playsound minecraft:block.beacon.activate master @a
execute as @e[tag=freshcraft_livingchestplate] at @s run playsound minecraft:block.anvil.use master @a
execute as @e[tag=freshcraft_livingchestplate] run tag @s remove freshcraft_livingchestplate


### LIVING HELMET ###
execute as @e[type=item,nbt={Item:{id:"minecraft:iron_helmet",Count:1b}}] at @s run execute as @e[type=item,nbt={Item:{tag:{redstoneessence:1b},Count:6b}},limit=1,distance=0..1,sort=nearest] at @s if block ~ ~-1 ~ emerald_block run summon minecraft:item ~ ~ ~ {Tags:["freshcraft_livinghelmet"],Item:{id:"minecraft:leather_helmet",Count:1b,tag:{CanDestroy:["minecraft:pink_carpet"],display:{Name:'{"text":"Living Helmet","color":"red"}',Lore:['{"text":"Looks to be moving by it self.","color":"red"}'],color:16711680},HideFlags:12,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:5,Operation:0,UUIDLeast:293544,UUIDMost:472080,Slot:"head"},{AttributeName:"generic.armor",Name:"generic.armor",Amount:2,Operation:0,UUIDLeast:361092,UUIDMost:218009,Slot:"head"}]}}}

execute as @e[tag=freshcraft_livinghelmet] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:iron_helmet",Count:1b}},limit=1,sort=nearest]
execute as @e[tag=freshcraft_livinghelmet] at @s run kill @e[type=item,nbt={Item:{tag:{redstoneessence:1b},Count:6b}},limit=1,sort=nearest]
execute as @e[tag=freshcraft_livinghelmet] at @s run playsound minecraft:block.beacon.activate master @a
execute as @e[tag=freshcraft_livinghelmet] at @s run playsound minecraft:block.anvil.use master @a
execute as @e[tag=freshcraft_livinghelmet] run tag @s remove freshcraft_livinghelmet


### LIVING LEGGINGS ###
execute as @e[type=item,nbt={Item:{id:"minecraft:iron_leggings",Count:1b}}] at @s run execute as @e[type=item,nbt={Item:{tag:{redstoneessence:1b},Count:6b}},limit=1,distance=0..1,sort=nearest] at @s if block ~ ~-1 ~ emerald_block run summon minecraft:item ~ ~ ~ {Tags:["freshcraft_livingleggings"],Item:{id:"minecraft:leather_leggings",Count:1b,tag:{CanDestroy:["minecraft:green_carpet"],display:{Name:'{"text":"Living Leggings","color":"red"}',Lore:['{"text":"Looks to be moving by it self.","color":"red"}'],color:16711680},HideFlags:12,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:5,Operation:0,UUIDLeast:549214,UUIDMost:411849,Slot:"legs"},{AttributeName:"generic.armor",Name:"generic.armor",Amount:4,Operation:0,UUIDLeast:501471,UUIDMost:564858,Slot:"legs"}]}}}

execute as @e[tag=freshcraft_livingleggings] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:iron_leggings",Count:1b}},limit=1,sort=nearest]
execute as @e[tag=freshcraft_livingleggings] at @s run kill @e[type=item,nbt={Item:{tag:{redstoneessence:1b},Count:6b}},limit=1,sort=nearest]
execute as @e[tag=freshcraft_livingleggings] at @s run playsound minecraft:block.beacon.activate master @a
execute as @e[tag=freshcraft_livingleggings] at @s run playsound minecraft:block.anvil.use master @a
execute as @e[tag=freshcraft_livingleggings] run tag @s remove freshcraft_livingleggings


### LIVING BOOTS ###
execute as @e[type=item,nbt={Item:{id:"minecraft:iron_boots",Count:1b}}] at @s run execute as @e[type=item,nbt={Item:{tag:{redstoneessence:1b},Count:6b}},limit=1,distance=0..1,sort=nearest] at @s if block ~ ~-1 ~ emerald_block run summon minecraft:item ~ ~ ~ {Tags:["freshcraft_livingboots"],Item:{id:"minecraft:leather_boots",Count:1b,tag:{CanDestroy:["minecraft:red_carpet"],display:{Name:'{"text":"Living Boots","color":"red"}',Lore:['{"text":"Looks to be moving by it self.","color":"red"}'],color:16711680},HideFlags:12,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:5,Operation:0,UUIDLeast:617935,UUIDMost:339373,Slot:"feet"},{AttributeName:"generic.armor",Name:"generic.armor",Amount:1,Operation:0,UUIDLeast:984518,UUIDMost:957832,Slot:"feet"}]}}}

execute as @e[tag=freshcraft_livingboots] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:iron_boots",Count:1b}},limit=1,sort=nearest]
execute as @e[tag=freshcraft_livingboots] at @s run kill @e[type=item,nbt={Item:{tag:{redstoneessence:1b},Count:6b}},limit=1,sort=nearest]
execute as @e[tag=freshcraft_livingboots] at @s run playsound minecraft:block.beacon.activate master @a
execute as @e[tag=freshcraft_livingboots] at @s run playsound minecraft:block.anvil.use master @a
execute as @e[tag=freshcraft_livingboots] run tag @s remove freshcraft_livingboots


### TAG FOR LATER ADVANCEMENT ###
execute as @a[nbt={Inventory:[{Slot:103b,id:"minecraft:leather_helmet",Count:1b,tag:{CanDestroy:["minecraft:pink_carpet"]}},{Slot:102b,id:"minecraft:leather_chestplate",Count:1b,tag:{CanDestroy:["minecraft:black_carpet"]}},{Slot:101b,id:"minecraft:leather_leggings",Count:1b,tag:{CanDestroy:["minecraft:green_carpet"]}},{Slot:100b,id:"minecraft:leather_boots",Count:1b,tag:{CanDestroy:["minecraft:red_carpet"]}}]}] run tag @s add worn_livingarmor