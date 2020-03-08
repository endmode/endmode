### CRAFTING ###

### CHESTPLATE ###
execute as @e[type=item,nbt={Item:{id:"minecraft:iron_chestplate",Count:1b}}] at @s run execute as @e[type=item,nbt={Item:{tag:{enchantedstring:1b},Count:50b}},limit=1,distance=0..1,sort=nearest] at @s if entity @e[tag=magic_armorstand,distance=..1] run summon minecraft:item ~ ~ ~ {Tags:["freshcraft_enchantedchestplate"],Item:{id:"minecraft:leather_chestplate",Count:1b,tag:{CanDestroy:["minecraft:black_concrete"],display:{Name:'{"text":"Enchanted Chestplate","color":"dark_blue"}',Lore:['{"text":"Made from the strongest string in the universe.","color":"blue"}'],color:255},HideFlags:12,RepairCost:10,Unbreakable:1b,nchantments:[{id:"minecraft:protection",lvl:2s}],AttributeModifiers:[{AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:3,Operation:0,UUIDLeast:985403,UUIDMost:315223,Slot:"chest"},{AttributeName:"generic.armor",Name:"generic.armor",Amount:8,Operation:0,UUIDLeast:267242,UUIDMost:832646,Slot:"chest"}]}}}

execute as @e[tag=freshcraft_enchantedchestplate] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:iron_chestplate",Count:1b}},limit=1,sort=nearest]
execute as @e[tag=freshcraft_enchantedchestplate] at @s run kill @e[type=item,nbt={Item:{tag:{enchantedstring:1b},Count:50b}},limit=1,sort=nearest]
execute as @e[tag=freshcraft_enchantedchestplate] at @s run playsound minecraft:block.enchantment_table.use master @a
execute as @e[tag=freshcraft_enchantedchestplate] at @s run playsound minecraft:block.anvil.use master @a
execute as @e[tag=freshcraft_enchantedchestplate] run tag @s remove freshcraft_enchantedchestplate


### HELMET ###
execute as @e[type=item,nbt={Item:{id:"minecraft:iron_helmet",Count:1b}}] at @s run execute as @e[type=item,nbt={Item:{tag:{enchantedstring:1b},Count:50b}},limit=1,distance=0..1,sort=nearest] at @s if entity @e[tag=magic_armorstand,distance=..1] run summon minecraft:item ~ ~ ~ {Tags:["freshcraft_enchantedhelmet"],Item:{id:"minecraft:leather_helmet",Count:1b,tag:{CanDestroy:["minecraft:yellow_concrete"],display:{Name:'{"text":"Enchanted Helmet","color":"dark_blue"}',Lore:['{"text":"Made from the strongest string in the universe.","color":"blue"}'],color:255},HideFlags:12,RepairCost:10,Unbreakable:1b,nchantments:[{id:"minecraft:protection",lvl:2s},{id:"minecraft:respiration",lvl:1s},{id:"minecraft:aqua_affinity",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:2,Operation:0,UUIDLeast:420152,UUIDMost:614119,Slot:"head"},{AttributeName:"generic.armor",Name:"generic.armor",Amount:3,Operation:0,UUIDLeast:143458,UUIDMost:901311,Slot:"head"}]}}}

execute as @e[tag=freshcraft_enchantedhelmet] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:iron_helmet",Count:1b}},limit=1,sort=nearest]
execute as @e[tag=freshcraft_enchantedhelmet] at @s run kill @e[type=item,nbt={Item:{tag:{enchantedstring:1b},Count:50b}},limit=1,sort=nearest]
execute as @e[tag=freshcraft_enchantedhelmet] at @s run playsound minecraft:block.enchantment_table.use master @a
execute as @e[tag=freshcraft_enchantedhelmet] at @s run playsound minecraft:block.anvil.use master @a
execute as @e[tag=freshcraft_enchantedhelmet] run tag @s remove freshcraft_enchantedhelmet


### LEGGINGS ###
execute as @e[type=item,nbt={Item:{id:"minecraft:iron_leggings",Count:1b}}] at @s run execute as @e[type=item,nbt={Item:{tag:{enchantedstring:1b},Count:50b}},limit=1,distance=0..1,sort=nearest] at @s if entity @e[tag=magic_armorstand,distance=..1] run summon minecraft:item ~ ~ ~ {Tags:["freshcraft_enchantedleggings"],Item:{id:"minecraft:leather_leggings",Count:1b,tag:{CanDestroy:["minecraft:red_concrete"],display:{Name:'{"text":"Enchanted Leggings","color":"dark_blue"}',Lore:['{"text":"Made from the strongest string in the universe.","color":"blue"}'],color:255},HideFlags:12,RepairCost:10,Unbreakable:1b,nchantments:[{id:"minecraft:protection",lvl:2s}],AttributeModifiers:[{AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:3,Operation:0,UUIDLeast:306738,UUIDMost:866151,Slot:"legs"},{AttributeName:"generic.armor",Name:"generic.armor",Amount:6,Operation:0,UUIDLeast:559477,UUIDMost:348831,Slot:"legs"}]}}}

execute as @e[tag=freshcraft_enchantedleggings] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:iron_leggings",Count:1b}},limit=1,sort=nearest]
execute as @e[tag=freshcraft_enchantedleggings] at @s run kill @e[type=item,nbt={Item:{tag:{enchantedstring:1b},Count:50b}},limit=1,sort=nearest]
execute as @e[tag=freshcraft_enchantedleggings] at @s run playsound minecraft:block.enchantment_table.use master @a
execute as @e[tag=freshcraft_enchantedleggings] at @s run playsound minecraft:block.anvil.use master @a
execute as @e[tag=freshcraft_enchantedleggings] run tag @s remove freshcraft_enchantedleggings


### BOOTS ###
execute as @e[type=item,nbt={Item:{id:"minecraft:iron_boots",Count:1b}}] at @s run execute as @e[type=item,nbt={Item:{tag:{enchantedstring:1b},Count:50b}},limit=1,distance=0..1,sort=nearest] at @s if entity @e[tag=magic_armorstand,distance=..1] run summon minecraft:item ~ ~ ~ {Tags:["freshcraft_enchantedboots"],Item:{id:"minecraft:leather_boots",Count:1b,tag:{CanDestroy:["minecraft:blue_concrete"],display:{Name:'{"text":"Enchanted Boots","color":"dark_blue"}',Lore:['{"text":"Made from the strongest string in the universe.","color":"blue"}'],color:255},HideFlags:12,RepairCost:10,Unbreakable:1b,nchantments:[{id:"minecraft:protection",lvl:2s},{id:"minecraft:feather_falling",lvl:3s},{id:"minecraft:depth_strider",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:2,Operation:0,UUIDLeast:428273,UUIDMost:809229,Slot:"feet"},{AttributeName:"generic.armor",Name:"generic.armor",Amount:3,Operation:0,UUIDLeast:390779,UUIDMost:513896,Slot:"feet"}]}}}

execute as @e[tag=freshcraft_enchantedboots] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:iron_boots",Count:1b}},limit=1,sort=nearest]
execute as @e[tag=freshcraft_enchantedboots] at @s run kill @e[type=item,nbt={Item:{tag:{enchantedstring:1b},Count:50b}},limit=1,sort=nearest]
execute as @e[tag=freshcraft_enchantedboots] at @s run playsound minecraft:block.enchantment_table.use master @a
execute as @e[tag=freshcraft_enchantedboots] at @s run playsound minecraft:block.anvil.use master @a
execute as @e[tag=freshcraft_enchantedboots] run tag @s remove freshcraft_enchantedboots


### ABILITY ###
tag @a remove lowhp
tag @a[scores={health=0..6}] add lowhp
tag @a remove enchanted_armorcomplete
execute as @a[nbt={Inventory:[{Slot:103b,id:"minecraft:leather_helmet",Count:1b,tag:{CanDestroy:["minecraft:yellow_concrete"]}},{Slot:102b,id:"minecraft:leather_chestplate",Count:1b,tag:{CanDestroy:["minecraft:black_concrete"]}},{Slot:101b,id:"minecraft:leather_leggings",Count:1b,tag:{CanDestroy:["minecraft:red_concrete"]}},{Slot:100b,id:"minecraft:leather_boots",Count:1b,tag:{CanDestroy:["minecraft:blue_concrete"]}}]}] run tag @s add enchanted_armorcomplete
execute as @a[tag=enchanted_armorcomplete] at @s run particle minecraft:dust 0 1 1 1 ~ ~ ~ 0.2 0.1 0.2 1 5 force
scoreboard players set @a[tag=enchanted_armorcomplete,tag=lowhp,scores={enchantedarmor=..8}] enchantedarmor 10
scoreboard players reset @a[scores={enchantedarmor=8}] enchantedarmor
scoreboard players add @a enchantedarmor 1
execute as @a[scores={enchantedarmor=11..75}] at @s run summon minecraft:firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Flicker:1b,Colors:[I;61183],FadeColors:[I;2303]}]}}}}
execute as @a[scores={enchantedarmor=11}] run effect give @s minecraft:resistance 20 50
execute as @a[scores={enchantedarmor=11}] run effect give @s minecraft:regeneration 7 10 true
execute as @a[scores={enchantedarmor=11..75}] at @s run tp @s ~ ~2 ~
execute as @a[scores={enchantedarmor=11..74}] run effect give @s minecraft:slow_falling 5 10
execute as @a[scores={enchantedarmor=80}] run effect give @s minecraft:luck 120 0
scoreboard players reset @a[scores={enchantedarmor=2480..}] enchantedarmor