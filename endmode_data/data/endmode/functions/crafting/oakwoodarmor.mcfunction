### CRAFTING ###

### WOOD CHESTPLATE ###
execute as @a[nbt={Inventory:[{id:"minecraft:chicken_spawn_egg"}]},gamemode=survival] run tag @s add woodchestplate
execute as @a[tag=woodchestplate] run give @s minecraft:leather_chestplate{CanDestroy:["minecraft:magenta_wool"],display:{Name:'{"text":"Oak Chestplate","color":"white"}',Lore:['{"text":"just imagine this is made from wood.","color":"blue"}'],color:2031616},HideFlags:12,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:3,Operation:0,UUIDLeast:156509,UUIDMost:60157,Slot:"chest"}]} 1
execute as @a[tag=woodchestplate] run clear @s chicken_spawn_egg 1
execute as @a[tag=woodchestplate] run tag @s remove woodchestplate


### WOOD HELMET ###
execute as @a[nbt={Inventory:[{id:"minecraft:cow_spawn_egg"}]},gamemode=survival] run tag @s add woodhelmet
execute as @a[tag=woodhelmet] run give @s minecraft:leather_helmet{CanDestroy:["minecraft:purple_wool"],display:{Name:'{"text":"Oak Helmet","color":"white"}',Lore:['{"text":"just imagine this is made from wood.","color":"blue"}'],color:2031616},HideFlags:12,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:1,Operation:0,UUIDLeast:419277,UUIDMost:578772,Slot:"head"}]} 1
execute as @a[tag=woodhelmet] run clear @s cow_spawn_egg 1
execute as @a[tag=woodhelmet] run tag @s remove woodhelmet


### WOOD LEGGINGS ###
execute as @a[nbt={Inventory:[{id:"minecraft:llama_spawn_egg"}]},gamemode=survival] run tag @s add woodleggings
execute as @a[tag=woodleggings] run give @s minecraft:leather_leggings{CanDestroy:["minecraft:lime_wool"],display:{Name:'{"text":"Oak Leggings","color":"white"}',Lore:['{"text":"just imagine this is made from wood.","color":"blue"}'],color:2031616},HideFlags:12,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:2,Operation:0,UUIDLeast:907137,UUIDMost:224209,Slot:"legs"}]} 1
execute as @a[tag=woodleggings] run clear @s llama_spawn_egg 1
execute as @a[tag=woodleggings] run tag @s remove woodleggings


### WOOD BOOTS ###
execute as @a[nbt={Inventory:[{id:"minecraft:pig_spawn_egg"}]},gamemode=survival] run tag @s add woodboots
execute as @a[tag=woodboots] run give @s minecraft:leather_boots{CanDestroy:["minecraft:cyan_wool"],display:{Name:'{"text":"Oak Boots","color":"white"}',Lore:['{"text":"just imagine this is made from wood.","color":"blue"}'],color:2031616},HideFlags:12,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:1,Operation:0,UUIDLeast:872214,UUIDMost:640025,Slot:"feet"}]} 1
execute as @a[tag=woodboots] run clear @s pig_spawn_egg 1
execute as @a[tag=woodboots] run tag @s remove woodboots


### ADVANCEMENT ###
execute as @a[nbt={Inventory:[{Slot:103b,id:"minecraft:leather_helmet",Count:1b,tag:{CanDestroy:["minecraft:purple_wool"]}},{Slot:102b,id:"minecraft:leather_chestplate",Count:1b,tag:{CanDestroy:["minecraft:magenta_wool"]}},{Slot:101b,id:"minecraft:leather_leggings",Count:1b,tag:{CanDestroy:["minecraft:lime_wool"]}},{Slot:100b,id:"minecraft:leather_boots",Count:1b,tag:{CanDestroy:["minecraft:cyan_wool"]}}]}] run advancement grant @s only adventure:full_oak_armor