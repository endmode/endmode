### DATA CHANGE ###
execute as @e[type=ender_dragon,tag=!enderdragon] run data merge entity @s {Team:"enderdragon",Health:500f,Tags:["enderdragon"],Attributes:[{Name:generic.maxHealth,Base:500}]}


### KILL DRAGONMOB OVERWORLD ###
execute as @e[tag=dragonmob,nbt={Dimension:0}] run kill @s





























### ABILITY - FIREBALL | HOMING CREEPERS ###
execute as @e[scores={dragonfireb=1}] at @s run summon minecraft:armor_stand ~ ~ ~ {Team:"enderdragon",NoGravity:1b,Invulnerable:1b,ShowArms:0b,Small:0b,Marker:0b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:0b,Tags:["dragonhoming_armorstand"]}
scoreboard players add @e[type=dragon_fireball] dragonfireb 1
execute as @e[tag=dragonhoming_armorstand] at @s run tp @s ^ ^ ^0.5 facing entity @p
execute as @e[tag=dragonhoming_armorstand] at @s if entity @e[type=arrow,distance=..1.5] run scoreboard players add @s dragonfireb2 1
execute as @e[tag=dragonhoming_armorstand] at @s if entity @e[type=arrow,distance=..1.5] run kill @e[type=arrow,distance=..1.5]
execute as @e[tag=dragonhoming_armorstand] at @s if entity @e[type=spectral_arrow,distance=..1.5] run scoreboard players add @s dragonfireb2 1
execute as @e[tag=dragonhoming_armorstand] at @s if entity @e[type=spectral_arrow,distance=..1.5] run kill @e[type=spectral_arrow,distance=..1.5]
execute as @e[scores={dragonfireb2=3}] run kill @s
execute as @e[tag=dragonhoming_armorstand] at @s run particle minecraft:end_rod ~ ~1 ~ 0.1 0.1 0.1 0.0001 1 force
execute as @e[tag=dragonhoming_armorstand] at @s run particle minecraft:dragon_breath ~ ~1 ~ 0.2 0.2 0.2 0.001 10 force
execute as @e[tag=dragonhoming_armorstand] at @s if entity @a[distance=..3] run summon minecraft:creeper ~ ~ ~ {Invulnerable:1b,Team:"enderdragon",DeathLootTable:"-",CanPickUpLoot:0b,ExplosionRadius:4b,Fuse:1,ignited:1b,Tags:["dragonhoming_creeper"],CustomName:'{"text":"Exploding Animated Flame","color":"dark_purple"}'}
execute as @e[tag=dragonhoming_armorstand] at @s if entity @e[tag=dragonhoming_creeper,distance=..1] run kill @s


### ABILITY - LANDING | KNOCKBACK ZOMBIES ###
scoreboard players add @e[tag=enderdragon,scores={ab1orab2=6..10}] dragon_ab2 1
scoreboard players reset @e[tag=enderdragon,nbt=!{DragonPhase:3}] dragon_ab2
execute at @a if entity @e[scores={dragon_ab2=100}] run summon minecraft:zombie ~ ~60 ~ {DeathLootTable:"-",CanPickUpLoot:0b,Team:"enderdragon",Health:35f,Tags:["dragonmob","dragonzombie"],CustomName:'{"text":"Hard Hitting Animated Flame","color":"dark_purple"}',HandItems:[{id:"minecraft:iron_shovel",Count:1b,tag:{display:{Name:'{"text":"Bonk Shovel"}'},Enchantments:[{id:"minecraft:knockback",lvl:20s}]}},{id:"minecraft:iron_shovel",tag:{display:{Name:'{"text":"Bonk Shovel"}'},Enchantments:[{id:"minecraft:knockback",lvl:20s}]}}],HandDropChances:[0.000F,0.000F],Attributes:[{Name:generic.maxHealth,Base:35},{Name:generic.followRange,Base:1000},{Name:generic.knockbackResistance,Base:1}]}
execute as @e[scores={dragon_ab2=110}] run scoreboard players set @s ab1orab2 1
execute as @e[scores={dragon_ab2=100}] run scoreboard players set @s dragon_ab2 101
execute as @e[tag=dragonzombie] at @s if block ~ ~-2 ~ air run effect give @s jump_boost 1 255
execute as @e[tag=dragonzombie] run effect give @s speed 1 4
execute as @e[tag=dragonzombie] run effect give @s invisibility 1 1
execute as @e[tag=dragonzombie] at @s run particle minecraft:dragon_breath ~ ~1 ~ 0.2 0.7 0.2 


### ABILITY - LANDING | TELEPORTING SKELETONS ###
scoreboard players add @e[tag=enderdragon] ab1orab2 1
scoreboard players set @e[scores={ab1orab2=5}] ab1orab2 1
scoreboard players set @e[scores={ab1orab2=10}] ab1orab2 6
scoreboard players add @e[tag=enderdragon,scores={ab1orab2=1..5}] dragon_ab1 1
scoreboard players reset @e[tag=enderdragon,nbt=!{DragonPhase:3}] dragon_ab1
execute at @a if entity @e[scores={dragon_ab1=100}] run summon minecraft:skeleton ~ ~ ~ {DeathLootTable:"-",Team:"enderdragon",CanPickUpLoot:1b,Health:20f,Tags:["dragonmob","dragonskeleton"],CustomName:'{"text":"Teleporting Animated Flame","color":"dark_purple"}',HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:power",lvl:10s},{id:"minecraft:infinity",lvl:1s}]}},{}],HandDropChances:[0.000F,0.085F],ActiveEffects:[{Id:1b,Amplifier:4b,Duration:9999}],Attributes:[{Name:generic.maxHealth,Base:20},{Name:generic.followRange,Base:1000},{Name:generic.knockbackResistance,Base:1}]}
execute as @e[scores={dragon_ab1=110}] run scoreboard players set @s ab1orab2 6
execute as @e[scores={dragon_ab1=100}] run scoreboard players set @s dragon_ab1 101
scoreboard players add @e[tag=dragonskeleton] dragon_ab1.1 1
execute as @r at @s run spreadplayers ~ ~ 20 20 false @e[scores={dragon_ab1.1=4}]
execute as @e[scores={dragon_ab1.1=90}] run scoreboard players reset @s dragon_ab1.1
execute as @e[tag=dragonskeleton] run effect give @s invisibility 1 1
execute as @e[tag=dragonskeleton] at @s run particle minecraft:dragon_breath ~ ~1 ~ 0.2 0.7 0.2 0






























