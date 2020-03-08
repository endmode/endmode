### GETTING WHITE DIAMONDS ###
tag @e[type=item,nbt={Item:{id:"minecraft:nether_star"}}] add item_nether_star
execute as @e[type=item,nbt={Item:{id:"minecraft:diamond",Count:3b}}] at @s if entity @e[tag=item_nether_star,distance=..1] run summon minecraft:item ~ ~ ~ {Tags:["freshcraft_whitediamond"],Item:{id:"minecraft:iron_nugget",Count:1b,tag:{display:{Name:'{"text":"White Diamond","color":"white","bold":true}',Lore:['{"text":"Not the one from Steven Universe.","color":"blue"}']},HideFlags:63,CustomModelData:1,whitediamond:1b}}}

execute as @e[tag=freshcraft_whitediamond] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:diamond",Count:3b}},limit=1,sort=nearest]
execute as @e[tag=freshcraft_whitediamond] at @s run playsound minecraft:block.anvil.use master @a
execute as @e[tag=freshcraft_whitediamond] run tag @s remove freshcraft_whitediamond


### CRAFTING ###

### SWORD ###
execute as @e[type=item,nbt={Item:{id:"minecraft:blaze_rod",Count:1b}}] at @s run execute as @e[type=item,nbt={Item:{id:"minecraft:golden_sword",Count:1b}},limit=1,sort=nearest,distance=0..1] at @s run execute as @e[type=item,nbt={Item:{tag:{whitediamond:1b},Count:2b}},limit=1,distance=0..1,sort=nearest] at @s if entity @e[tag=magic_armorstand,distance=..1] run summon minecraft:item ~ ~ ~ {Tags:["freshcraft_whitediamondsword"],Item:{id:"minecraft:golden_sword",Count:1b,tag:{display:{Name:'{"text":"White Diamond Sword","color":"white","bold":true}',Lore:['{"text":" "}','{"text":"When in main hand:","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}','{"text":" 1.6 Attack Speed","color":"dark_green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}','{"text":" 8.5 Attack Damage","color":"dark_green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}']},HideFlags:6,Unbreakable:1b,CustomModelData:3,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-2.4000000953674316,Operation:0,UUIDLeast:870106,UUIDMost:575465,Slot:"mainhand"},{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:8.5,Operation:0,UUIDLeast:194108,UUIDMost:24023,Slot:"mainhand"}]}}}

execute as @e[tag=freshcraft_whitediamondsword] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:blaze_rod",Count:1b}},limit=1,sort=nearest]
execute as @e[tag=freshcraft_whitediamondsword] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:golden_sword",Count:1b}},limit=1,sort=nearest,tag=!freshcraft_whitediamondsword]
execute as @e[tag=freshcraft_whitediamondsword] at @s run kill @e[type=item,nbt={Item:{tag:{whitediamond:1b},Count:2b}},limit=1,sort=nearest]
execute as @e[tag=freshcraft_whitediamondsword] at @s run playsound minecraft:block.anvil.use master @a
execute as @e[tag=freshcraft_whitediamondsword] run tag @s remove freshcraft_whitediamondsword


### PICKAXE ###
execute as @e[type=item,nbt={Item:{id:"minecraft:blaze_rod",Count:1b}}] at @s run execute as @e[type=item,nbt={Item:{id:"minecraft:golden_pickaxe",Count:1b}},limit=1,sort=nearest,distance=0..1] at @s run execute as @e[type=item,nbt={Item:{tag:{whitediamond:1b},Count:2b}},limit=1,distance=0..1,sort=nearest] at @s if entity @e[tag=magic_armorstand,distance=..1] run summon minecraft:item ~ ~ ~ {Tags:["freshcraft_whitediamondpickaxe"],Item:{id:"minecraft:golden_pickaxe",Count:1b,tag:{CanDestroy:["minecraft:purple_carpet"],display:{Name:'{"text":"White Diamond Pickaxe","color":"white","bold":true}',Lore:['{"text":" "}','{"text":"When in main hand:","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}','{"text":" 1.2 Attack Speed","color":"dark_green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}','{"text":" 2 Attack Damage","color":"dark_green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}','{"text":" Haste","color":"dark_green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}']},HideFlags:14,Unbreakable:1b,CustomModelData:1,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:2,Operation:0,UUIDLeast:314683,UUIDMost:474595,Slot:"mainhand"},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-2.8,Operation:0,UUIDLeast:841877,UUIDMost:491414,Slot:"mainhand"}]}}}

execute as @e[tag=freshcraft_whitediamondpickaxe] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:blaze_rod",Count:1b}},limit=1,sort=nearest]
execute as @e[tag=freshcraft_whitediamondpickaxe] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:golden_pickaxe",Count:1b}},limit=1,sort=nearest,tag=!freshcraft_whitediamondpickaxe]
execute as @e[tag=freshcraft_whitediamondpickaxe] at @s run kill @e[type=item,nbt={Item:{tag:{whitediamond:1b},Count:2b}},limit=1,sort=nearest]
execute as @e[tag=freshcraft_whitediamondpickaxe] at @s run playsound minecraft:block.anvil.use master @a
execute as @e[tag=freshcraft_whitediamondpickaxe] run tag @s remove freshcraft_whitediamondpickaxe

execute as @a[nbt={SelectedItem:{id:"minecraft:golden_pickaxe",Count:1b,tag:{CanDestroy:["minecraft:purple_carpet"]}}}] run effect give @s minecraft:haste 1 15 true


### AXE ###
execute as @e[type=item,nbt={Item:{id:"minecraft:blaze_rod",Count:1b}}] at @s run execute as @e[type=item,nbt={Item:{id:"minecraft:golden_axe",Count:1b}},limit=1,sort=nearest,distance=0..1] at @s run execute as @e[type=item,nbt={Item:{tag:{whitediamond:1b},Count:2b}},limit=1,distance=0..1,sort=nearest] at @s if entity @e[tag=magic_armorstand,distance=..1] run summon minecraft:item ~ ~ ~ {Tags:["freshcraft_whitediamondaxe"],Item:{id:"minecraft:golden_axe",Count:1b,tag:{CanDestroy:["minecraft:purple_carpet"],display:{Name:'{"text":"White Diamond Axe","color":"white","bold":true}',Lore:['{"text":" "}','{"text":"When in main hand","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}','{"text":" 0.8 Attack Speed","color":"dark_green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}','{"text":" 3 Attack Damage","color":"dark_green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}','{"text":" Haste","color":"dark_green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}']},HideFlags:14,Unbreakable:1b,CustomModelData:1,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-3.2,Operation:0,UUIDLeast:750069,UUIDMost:995245,Slot:"mainhand"},{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:3,Operation:0,UUIDLeast:775070,UUIDMost:203433,Slot:"mainhand"}]}}}

execute as @e[tag=freshcraft_whitediamondaxe] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:blaze_rod",Count:1b}},limit=1,sort=nearest]
execute as @e[tag=freshcraft_whitediamondaxe] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:golden_axe",Count:1b}},limit=1,sort=nearest,tag=!freshcraft_whitediamondaxe]
execute as @e[tag=freshcraft_whitediamondaxe] at @s run kill @e[type=item,nbt={Item:{tag:{whitediamond:1b},Count:2b}},limit=1,sort=nearest]
execute as @e[tag=freshcraft_whitediamondaxe] at @s run playsound minecraft:block.anvil.use master @a
execute as @e[tag=freshcraft_whitediamondaxe] run tag @s remove freshcraft_whitediamondaxe

execute as @a[nbt={SelectedItem:{id:"minecraft:golden_axe",Count:1b,tag:{CanDestroy:["minecraft:purple_carpet"]}}}] run effect give @s minecraft:haste 1 10 true


### SHOVEL ###
execute as @e[type=item,nbt={Item:{id:"minecraft:blaze_rod",Count:1b}}] at @s run execute as @e[type=item,nbt={Item:{id:"minecraft:golden_shovel",Count:1b}},limit=1,sort=nearest,distance=0..1] at @s run execute as @e[type=item,nbt={Item:{tag:{whitediamond:1b},Count:2b}},limit=1,distance=0..1,sort=nearest] at @s if entity @e[tag=magic_armorstand,distance=..1] run summon minecraft:item ~ ~ ~ {Tags:["freshcraft_whitediamondshovel"],Item:{id:"minecraft:golden_shovel",Count:1b,tag:{CanDestroy:["minecraft:purple_carpet"],display:{Name:'{"text":"White Diamond Shovel","color":"white","bold":true}',Lore:['{"text":" "}','{"text":"When in main hand","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}','{"text":" 1 Attack Speed","color":"dark_green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}','{"text":" 2 Attack Damage","color":"dark_green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}','{"text":" Haste","color":"dark_green","bold":false,"italic":false,"underlined":false,"strikethrough":false}']},HideFlags:14,Unbreakable:1b,CustomModelData:1,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:2,Operation:0,UUIDLeast:327909,UUIDMost:280804,Slot:"mainhand"},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-3,Operation:0,UUIDLeast:70934,UUIDMost:438316,Slot:"mainhand"}]}}}

execute as @e[tag=freshcraft_whitediamondshovel] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:blaze_rod",Count:1b}},limit=1,sort=nearest]
execute as @e[tag=freshcraft_whitediamondshovel] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:golden_shovel",Count:1b}},limit=1,sort=nearest,tag=!freshcraft_whitediamondshovel]
execute as @e[tag=freshcraft_whitediamondshovel] at @s run kill @e[type=item,nbt={Item:{tag:{whitediamond:1b},Count:2b}},limit=1,sort=nearest]
execute as @e[tag=freshcraft_whitediamondshovel] at @s run playsound minecraft:block.anvil.use master @a
execute as @e[tag=freshcraft_whitediamondshovel] run tag @s remove freshcraft_whitediamondshovel

execute as @a[nbt={SelectedItem:{id:"minecraft:golden_shovel",Count:1b,tag:{CanDestroy:["minecraft:purple_carpet"]}}}] run effect give @s minecraft:haste 1 4 true