### CRAFTING ###

### STONE WARAXE ###
execute as @a[nbt={Inventory:[{id:"minecraft:zombie_spawn_egg"}]},gamemode=survival] run tag @s add stonewaraxe
execute as @a[tag=stonewaraxe] run give @s minecraft:stone_sword{display:{Name:'{"text":"Stone Battle Axe","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":" "}','{"text":"When in main hand:","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}','{"text":" 1.2 Attack Speed","color":"dark_green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}','{"text":" 9 Attack Damage","color":"dark_green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}']},HideFlags:2,CustomModelData:1,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:9,Operation:0,UUIDLeast:225163,UUIDMost:366327,Slot:"mainhand"},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-2.8,Operation:0,UUIDLeast:224420,UUIDMost:876733,Slot:"mainhand"}]} 1
execute as @a[tag=stonewaraxe] run clear @s zombie_spawn_egg 1
execute as @a[tag=stonewaraxe] run tag @s remove stonewaraxe


### IRON WARAXE ###
execute as @a[nbt={Inventory:[{id:"minecraft:creeper_spawn_egg"}]},gamemode=survival] run tag @s add ironwaraxe
execute as @a[tag=ironwaraxe] run give @s minecraft:iron_sword{display:{Name:'{"text":"Iron Battle Axe","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":" "}','{"text":"When in main hand:","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}','{"text":" 1.25 Attack Speed","color":"dark_green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}','{"text":" 9 Attack Damage","color":"dark_green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}']},HideFlags:2,CustomModelData:1,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:9,Operation:0,UUIDLeast:118119,UUIDMost:140029,Slot:"mainhand"},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-2.75,Operation:0,UUIDLeast:853027,UUIDMost:114609,Slot:"mainhand"}]} 1
execute as @a[tag=ironwaraxe] run clear @s creeper_spawn_egg 1
execute as @a[tag=ironwaraxe] run tag @s remove ironwaraxe


### GOLD WARAXE ###
execute as @a[nbt={Inventory:[{id:"minecraft:polar_bear_spawn_egg"}]},gamemode=survival] run tag @s add goldwaraxe
execute as @a[tag=goldwaraxe] run give @s minecraft:golden_sword{display:{Name:'{"text":"Golden Battle Axe","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":" "}','{"text":"When in main hand:","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}','{"text":" 1.4 Attack Speed","color":"dark_green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}','{"text":" 8 Attack Damage","color":"dark_green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}']},HideFlags:2,CustomModelData:2,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:8,Operation:0,UUIDLeast:766517,UUIDMost:321211,Slot:"mainhand"},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-2.6,Operation:0,UUIDLeast:480544,UUIDMost:652815,Slot:"mainhand"}]} 1
execute as @a[tag=goldwaraxe] run clear @s polar_bear_spawn_egg 1
execute as @a[tag=goldwaraxe] run tag @s remove goldwaraxe


### DIAMOND WARAXE ###
execute as @a[nbt={Inventory:[{id:"minecraft:dolphin_spawn_egg"}]},gamemode=survival] run tag @s add diamondwaraxe
execute as @a[tag=diamondwaraxe] run give @s minecraft:diamond_sword{display:{Name:'{"text":"Diamond Battle Axe","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":" "}','{"text":"When in main hand:","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}','{"text":" 1.3 Attack Speed","color":"dark_green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}','{"text":" 9 Attack Damage","color":"dark_green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}']},HideFlags:2,CustomModelData:3,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:9,Operation:0,UUIDLeast:125997,UUIDMost:254098,Slot:"mainhand"},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-2.7,Operation:0,UUIDLeast:73285,UUIDMost:883595,Slot:"mainhand"}]} 1
execute as @a[tag=diamondwaraxe] run clear @s dolphin_spawn_egg 1
execute as @a[tag=diamondwaraxe] run tag @s remove diamondwaraxe