### CRAFTING ###

### LIVELY CHESTPLATE ###
execute as @a[nbt={Inventory:[{id:"minecraft:skeleton_spawn_egg"}]},gamemode=survival] run tag @s add livelychestplate
execute as @a[tag=livelychestplate] run give @s minecraft:leather_chestplate{CanDestroy:["minecraft:pink_concrete"],display:{Name:'{"text":"Lively Chestplate","color":"white"}',Lore:['{"text":"Redstone really makes you powered up.","color":"red"}'],color:16729413},HideFlags:12,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:3,Operation:0,UUIDLeast:588732,UUIDMost:396987,Slot:"chest"},{AttributeName:"generic.armor",Name:"generic.armor",Amount:3,Operation:0,UUIDLeast:796461,UUIDMost:70257,Slot:"chest"}]} 1
execute as @a[tag=livelychestplate] run clear @s skeleton_spawn_egg 1
execute as @a[tag=livelychestplate] run tag @s remove livelychestplate


### LIVELY HELMET ###
execute as @a[nbt={Inventory:[{id:"minecraft:enderman_spawn_egg"}]},gamemode=survival] run tag @s add livelyhelmet
execute as @a[tag=livelyhelmet] run give @s minecraft:leather_helmet{CanDestroy:["minecraft:lime_concrete"],display:{Name:'{"text":"Lively Helmet","color":"white"}',Lore:['{"text":"Redstone really makes you powered up.","color":"red"}'],color:16729413},HideFlags:12,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:3,Operation:0,UUIDLeast:758235,UUIDMost:847028,Slot:"head"},{AttributeName:"generic.armor",Name:"generic.armor",Amount:1,Operation:0,UUIDLeast:557284,UUIDMost:54424,Slot:"head"}]} 1
execute as @a[tag=livelyhelmet] run clear @s enderman_spawn_egg 1
execute as @a[tag=livelyhelmet] run tag @s remove livelyhelmet


### LIVELY LEGGINGS ###
execute as @a[nbt={Inventory:[{id:"minecraft:villager_spawn_egg"}]},gamemode=survival] run tag @s add livelyleggings
execute as @a[tag=livelyleggings] run give @s minecraft:leather_leggings{CanDestroy:["minecraft:magenta_concrete"],display:{Name:'{"text":"Lively Leggings","color":"white"}',Lore:['{"text":"Redstone really makes you powered up.","color":"red"}'],color:16729413},HideFlags:12,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:3,Operation:0,UUIDLeast:453222,UUIDMost:546355,Slot:"legs"},{AttributeName:"generic.armor",Name:"generic.armor",Amount:2,Operation:0,UUIDLeast:747063,UUIDMost:804858,Slot:"legs"}]} 1
execute as @a[tag=livelyleggings] run clear @s villager_spawn_egg 1
execute as @a[tag=livelyleggings] run tag @s remove livelyleggings


### LIVELY BOOTS ###
execute as @a[nbt={Inventory:[{id:"minecraft:wolf_spawn_egg"}]},gamemode=survival] run tag @s add livelyboots
execute as @a[tag=livelyboots] run give @s minecraft:leather_boots{CanDestroy:["minecraft:white_concrete"],display:{Name:'{"text":"Lively Boots","color":"white"}',Lore:['{"text":"Redstone really makes you powered up.","color":"red"}'],color:16729413},HideFlags:12,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:3,Operation:0,UUIDLeast:6262,UUIDMost:421973,Slot:"feet"},{AttributeName:"generic.armor",Name:"generic.armor",Amount:1,Operation:0,UUIDLeast:465110,UUIDMost:236131,Slot:"feet"}]} 1
execute as @a[tag=livelyboots] run clear @s wolf_spawn_egg 1
execute as @a[tag=livelyboots] run tag @s remove livelyboots


### TAG FOR LATER ADVANCEMENT ###
execute as @a[nbt={Inventory:[{Slot:103b,id:"minecraft:leather_helmet",Count:1b,tag:{CanDestroy:["minecraft:lime_concrete"]}},{Slot:102b,id:"minecraft:leather_chestplate",Count:1b,tag:{CanDestroy:["minecraft:pink_concrete"]}},{Slot:101b,id:"minecraft:leather_leggings",Count:1b,tag:{CanDestroy:["minecraft:magenta_concrete"]}},{Slot:100b,id:"minecraft:leather_boots",Count:1b,tag:{CanDestroy:["minecraft:white_concrete"]}}]}] run tag @s add worn_livelyarmor