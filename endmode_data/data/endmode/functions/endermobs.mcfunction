### ENDER ZOMBIE ###
execute if entity @e[scores={startedendmode=50..}] run tag @e[type=zombie,tag=!controlledzombie,tag=!dragonmob] add ender_zombie
execute at @a run execute as @e[distance=..40,tag=ender_zombie,tag=!ender_zombie2] run data merge entity @s {Health:35f,DeathLootTable:"endmode:entities/endermobs",CanPickUpLoot:0b,Tags:["ender_zombie2"],CustomName:'{"text":"Ender Zombie","color":"dark_purple"}',ArmorItems:[{},{},{id:"minecraft:chainmail_chestplate",Count:1b},{}],ArmorDropChances:[0.085F,0.100F,0.000F,0.085F],Attributes:[{Name:generic.maxHealth,Base:35},{Name:generic.attackDamage,Base:20}]}
execute at @e[tag=ender_zombie2] run particle minecraft:dragon_breath ~ ~ ~ 0.1 1 0.1 0.01 3 force
effect give @e[tag=ender_zombie2] minecraft:speed 1 0 true


### ENDER SKELETON ###
execute if entity @e[scores={startedendmode=50..}] run tag @e[type=skeleton,tag=!ender_skeletonduped,tag=!dragonmob] add ender_skeleton
execute at @a run execute as @e[distance=..40,tag=ender_skeleton,tag=!ender_skeleton2] run data merge entity @s {CanPickUpLoot:0b,DeathLootTable:"endmode:entities/endermobs",Health:16f,Tags:["ender_skeleton2"],CustomName:'{"text":"Ender Skeleton","color":"dark_purple"}',HandItems:[{id:"minecraft:bow",Count:1b,tag:{CanDestroy:["minecraft:gray_wool"],display:{Name:'{"text":"Infected Bow","color":"dark_purple"}',Lore:['{"text":"Better get rid of it quickly."}']},HideFlags:10,Enchantments:[{id:"minecraft:power",lvl:4s},{id:"minecraft:infinity",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:16,Operation:0,UUIDLeast:825622,UUIDMost:946081}]}},{}],HandDropChances:[0.050F,0.085F],ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{}],ArmorDropChances:[0.100F,0.000F,0.000F,0.085F],Attributes:[{Name:generic.maxHealth,Base:14},{Name:generic.followRange,Base:40}]}
execute at @e[tag=ender_skeleton2] run particle minecraft:dragon_breath ~ ~ ~ 0.1 1 0.1 0.01 3 force
effect give @e[tag=ender_skeleton2] minecraft:speed 1 1 true
effect give @e[tag=ender_skeleton2] minecraft:invisibility 1 1 true
scoreboard objectives add skeletondupe dummy
execute as @e[tag=ender_skeleton2] at @s if entity @a[distance=..11] run scoreboard players add @s skeletondupe 1
execute as @e[tag=ender_skeleton2,scores={skeletondupe=140}] at @s run summon minecraft:skeleton ~ ~ ~ {DeathLootTable:"-",CanPickUpLoot:0b,Health:16f,Tags:["ender_skeletonduped"],CustomName:'{"text":"Ender Skeleton","color":"dark_purple"}',HandItems:[{id:"minecraft:bow",Count:1b,tag:{CanDestroy:["minecraft:gray_wool"],display:{Name:'{"text":"Infected Bow","color":"dark_purple"}',Lore:['{"text":"Better get rid of it quickly."}']},HideFlags:10,Enchantments:[{id:"minecraft:power",lvl:4s},{id:"minecraft:infinity",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:1,Operation:0,UUIDLeast:825622,UUIDMost:946081}]}},{}],HandDropChances:[0.050F,0.085F],ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{}],ArmorDropChances:[0.100F,0.000F,0.000F,0.085F],Attributes:[{Name:generic.maxHealth,Base:14},{Name:generic.followRange,Base:40}]}
execute as @e[scores={skeletondupe=140}] at @s run playsound minecraft:entity.enderman.teleport ambient @a ~ ~ ~
execute as @e[tag=ender_skeleton2,scores={skeletondupe=140}] run scoreboard players set @s skeletondupe 141
execute as @e[tag=ender_skeleton2,scores={skeletondupe=220}] at @s run summon minecraft:skeleton ~ ~ ~ {DeathLootTable:"-",CanPickUpLoot:0b,Health:16f,Tags:["ender_skeletonduped"],CustomName:'{"text":"Ender Skeleton","color":"dark_purple"}',HandItems:[{id:"minecraft:bow",Count:1b,tag:{CanDestroy:["minecraft:gray_wool"],display:{Name:'{"text":"Infected Bow","color":"dark_purple"}',Lore:['{"text":"Better get rid of it quickly."}']},HideFlags:10,Enchantments:[{id:"minecraft:power",lvl:4s},{id:"minecraft:infinity",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:1,Operation:0,UUIDLeast:825622,UUIDMost:946081}]}},{}],HandDropChances:[0.050F,0.085F],ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{}],ArmorDropChances:[0.100F,0.000F,0.000F,0.085F],Attributes:[{Name:generic.maxHealth,Base:14},{Name:generic.followRange,Base:40}]}
execute as @e[scores={skeletondupe=220}] at @s run playsound minecraft:entity.enderman.teleport ambient @a ~ ~ ~
execute as @e[tag=ender_skeleton2,scores={skeletondupe=220}] run scoreboard players set @s skeletondupe 221
effect give @e[tag=ender_skeletonduped] minecraft:speed 1 1 true
effect give @e[tag=ender_skeletonduped] minecraft:invisibility 1 1 true
execute at @e[tag=ender_skeletonduped] run particle minecraft:dragon_breath ~ ~ ~ 0.1 1 0.1 0.01 3 force


### INFECTED BOW / DROP FROM ENDER SKELETON ###
scoreboard objectives add infectedbow dummy
scoreboard players add @a infectedbow 1
scoreboard players reset @a[nbt=!{SelectedItem:{id:"minecraft:bow",Count:1b,tag:{CanDestroy:["minecraft:gray_wool"]}}}] infectedbow
execute as @a[scores={infectedbow=20}] run effect give @s minecraft:nausea 20 20 true
execute as @a[scores={infectedbow=180}] run kill @s
scoreboard players reset @a[scores={infectedbow=185..}] infectedbow


### ENDER SPIDER ###
execute if entity @e[scores={startedendmode=50..}] run tag @e[type=spider,tag=!dragonmob] add ender_spider
execute at @a run execute as @e[distance=..40,tag=ender_spider,tag=!ender_spider2] run data merge entity @s {DeathLootTable:"endmode:entities/enderspider",Health:20f,Tags:["ender_spider2"],CustomName:'{"text":"Ender Spider","color":"dark_purple"}',ArmorItems:[{},{},{},{}],ArmorDropChances:[0.500F,0.100F,0.085F,0.085F],Attributes:[{Name:generic.maxHealth,Base:25},{Name:generic.knockbackResistance,Base:100},{Name:generic.attackDamage,Base:10},{Name:generic.armor,Base:8}]}
execute at @e[tag=ender_spider2] run particle minecraft:dragon_breath ~ ~ ~ 0.5 0.1 0.5 0.01 3 force
effect give @e[tag=ender_spider2] minecraft:speed 1 0 true
scoreboard objectives add spiderteleport dummy
execute as @e[tag=ender_spider2] at @s if entity @a[distance=..10] run scoreboard players add @s spiderteleport 1
execute as @e[scores={spiderteleport=80}] at @s run tp @s @a[distance=..10,limit=1]
execute as @e[scores={spiderteleport=81}] at @s run playsound minecraft:entity.enderman.teleport ambient @a ~ ~ ~
scoreboard players reset @e[scores={spiderteleport=82}] spiderteleport


### MAYBE LAG FIX ###
execute as @a at @s run tp @e[distance=60..,tag=ender_spider2] ~ ~-150 ~
execute as @a at @s run tp @e[distance=60..,tag=ender_zombie2] ~ ~-150 ~
execute as @a at @s run tp @e[distance=60..,tag=ender_skeleton2] ~ ~-150 ~
execute as @a at @s run tp @e[distance=60..,tag=ender_skeletonduped] ~ ~-150 ~