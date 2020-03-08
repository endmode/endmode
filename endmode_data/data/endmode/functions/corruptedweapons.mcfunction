### TANK WEAPON ###
execute as @a[nbt=!{Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b,tag:{CanDestroy:["minecraft:yellow_wool"]}}]}] run tag @s remove use_endershield
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b,tag:{CanDestroy:["minecraft:yellow_wool"]}}]}] run tag @s add use_endershield
scoreboard players reset @a[nbt=!{Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b,tag:{CanDestroy:["minecraft:yellow_wool"]}}]}] enderblocked
scoreboard players reset @a[scores={shield_ability=8}] shield_ability
scoreboard players add @a shield_ability 1
execute as @a[scores={enderblocked=1050..}] run tag @s add endershield_5kills
execute as @a[scores={shield_ability=10..}] run tag @s remove endershield_5kills
execute as @a[tag=use_endershield,tag=endershield_5kills] run scoreboard players set @s shield_ability 10
scoreboard players reset @a[scores={shield_ability=10..}] enderblocked
execute as @a[scores={shield_ability=10..310}] at @s run particle minecraft:dust 1 0 0 2 ~ ~1 ~ 0.2 0.5 0.2 0.5 2 force
execute as @a[scores={shield_ability=10}] at @s run playsound minecraft:entity.ravager.roar master @a
execute as @a[scores={shield_ability=110}] at @s run playsound minecraft:entity.ravager.attack master @a
execute as @a[scores={shield_ability=210}] at @s run playsound minecraft:entity.ravager.attack master @a
execute as @a[scores={shield_ability=310}] at @s run playsound minecraft:entity.ravager.death master @a
execute as @a[scores={shield_ability=10..310}] run effect give @s minecraft:speed 1 5 true
execute as @a[scores={shield_ability=10..310}] run effect give @s minecraft:jump_boost 1 2 true
execute as @a[scores={shield_ability=10..310}] run effect give @s minecraft:strength 1 1 true
scoreboard players reset @a[scores={shield_ability=311}] shield_ability


### ATTACK WEAPON ###
execute as @a[nbt=!{SelectedItem:{id:"minecraft:golden_sword",Count:1b,tag:{CanDestroy:["minecraft:green_wool"]}}}] run tag @s remove using_endersword
execute as @a[nbt={SelectedItem:{id:"minecraft:golden_sword",Count:1b,tag:{CanDestroy:["minecraft:green_wool"]}}}] run tag @s add using_endersword
execute as @a[scores={killedmob4=1..},tag=using_endersword] run scoreboard players add @s endersword_ab 1
execute as @a[scores={killedmob4=1..}] run scoreboard players reset @s killedmob4
execute as @a[scores={endersword_ab=5..}] run effect give @s minecraft:speed 10 2 true
execute as @a[scores={endersword_ab=5..}] run effect give @s minecraft:jump_boost 10 2 true
execute as @a[scores={endersword_ab=5..}] run effect give @s minecraft:strength 10 1 true
execute as @a[scores={endersword_ab=5..}] run scoreboard players set @s endersword_ab2 1
execute as @a[scores={endersword_ab=5..}] run scoreboard players reset @s endersword_ab
execute as @a[scores={endersword_ab2=1..}] run scoreboard players add @s endersword_ab2 1
execute as @a[scores={endersword_ab2=2}] at @s run playsound minecraft:custom.enderswordab1 master @a
execute as @a[scores={endersword_ab2=200}] at @s run playsound minecraft:custom.enderswordab2 master @a
execute as @a[scores={endersword_ab2=1..200}] at @s run particle minecraft:dragon_breath ~ ~1 ~ 0.2 0.5 0.2 0.001 3 force
execute as @a[scores={endersword_ab2=201}] run scoreboard players reset @s endersword_ab2


### HEAL WEAPON ###
execute as @a[nbt={SelectedItem:{id:"minecraft:crossbow",Count:1b,tag:{CanDestroy:["minecraft:red_wool"]}}}] at @s run tag @e[type=minecraft:arrow,distance=..2,nbt=!{inGround:1b}] add heal_arrow
execute as @a[nbt={SelectedItem:{id:"minecraft:crossbow",Count:1b,tag:{CanDestroy:["minecraft:red_wool"]}}}] at @s run tag @e[type=minecraft:spectral_arrow,distance=..2,nbt=!{inGround:1b}] add heal_arrow
execute at @e[tag=heal_arrow] run particle minecraft:dragon_breath ~ ~ ~ 0.1 0.1 0.1 0.001 5 force
scoreboard players add @e[tag=heal_arrow] heal_arrowlife 1
kill @e[scores={heal_arrowlife=60},type=arrow]
scoreboard players reset @a[tag=!sneaking] heal_bowability
scoreboard players add @a[tag=sneaking] heal_bowability 1
scoreboard players reset @a[scores={heal_bowability=120}] heal_bowability
execute as @a[nbt={SelectedItem:{id:"minecraft:crossbow",Count:1b,tag:{CanDestroy:["minecraft:red_wool"]}}},scores={heal_bowability=119}] at @s run summon minecraft:armor_stand ~ ~3 ~ {NoGravity:1b,Invulnerable:1b,ShowArms:0b,Small:0b,Marker:0b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["heal_fireball"]}
execute as @e[tag=heal_fireball] at @s run tp @s ^ ^ ^0.3 facing entity @a[tag=!class_heal,limit=1,sort=nearest,distance=..50]
execute as @a[tag=!class_heal] at @s if entity @e[tag=heal_fireball,distance=..1] run tag @s add healweapon_tagged
execute as @a[tag=healweapon_tagged] run effect give @s instant_health
execute as @a[tag=class_heal] at @s if entity @a[tag=healweapon_tagged,distance=..50] run effect give @s instant_health
execute as @e[tag=heal_fireball] at @s if entity @a[tag=healweapon_tagged,distance=..1] run kill @s
scoreboard players add @e[tag=heal_fireball] heal_arrowlife 1
kill @e[scores={heal_arrowlife=400..},type=armor_stand]
execute as @e[tag=heal_fireball] at @s run particle minecraft:heart ~ ~0.8 ~ 0.1 0.1 0.1 0.0001 1 force
execute as @a[tag=healweapon_tagged] run tag @s remove healweapon_tagged


### ASSASSIN WEAPON ###
execute as @a[nbt={SelectedItem:{id:"minecraft:stone_hoe",Count:1b,tag:{CanDestroy:["minecraft:red_bed"]}}}] run tag @s add holding_enderscythe
execute as @a[nbt=!{SelectedItem:{id:"minecraft:stone_hoe",Count:1b,tag:{CanDestroy:["minecraft:red_bed"]}}}] run tag @s remove holding_enderscythe
execute as @a[tag=!holding_enderscythe] run scoreboard players reset @s killedmob2
execute as @a[tag=holding_enderscythe,scores={killedmob2=1..}] run tag @s add enderscythe_killedmob
execute as @e[scores={scythe_stand=1}] at @s run playsound minecraft:custom.blood_hit master @a
execute as @a[tag=enderscythe_killedmob] at @s run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,ShowArms:0b,Small:0b,Marker:0b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["enderscythe_armorstand"]}
execute as @e[tag=enderscythe_armorstand] at @s run particle minecraft:dust 1 0 0 1 ~ ~1 ~ 0.2 0.2 0.2 0.001 10 force
execute as @e[tag=enderscythe_armorstand] run scoreboard players add @s scythe_stand 1
execute as @e[tag=enderscythe_armorstand] at @s run tp @s ^ ^ ^0.7 facing entity @e[distance=..30,sort=nearest,limit=1,type=!player,type=!mooshroom,type=!wandering_trader,type=!panda,type=!skeleton_horse,type=!item,type=!armor_stand,type=!experience_orb,type=!horse,type=!arrow,type=!villager,type=!cow,type=!pig,type=!parrot,type=!mule,type=!donkey,type=!chicken,type=!spectral_arrow,type=!wolf,type=!llama]
execute as @a[tag=enderscythe_killedmob] run scoreboard players reset @s killedmob2
execute as @a[tag=enderscythe_killedmob] run tag @s remove enderscythe_killedmob
execute as @e[scores={scythe_stand=70..}] run kill @s
execute as @e[tag=enderscythe_armorstand] at @s run tag @e[distance=..1,sort=nearest,limit=1,type=!player,type=!mooshroom,type=!wandering_trader,type=!panda,type=!skeleton_horse,type=!item,type=!armor_stand,type=!experience_orb,type=!horse,type=!arrow,type=!villager,type=!cow,type=!pig,type=!parrot,type=!mule,type=!donkey,type=!chicken,type=!spectral_arrow,type=!wolf,type=!llama] add enderscythe_tagged
execute as @e[tag=enderscythe_tagged] at @s run kill @e[tag=enderscythe_armorstand,distance=..1]
execute as @e[tag=enderscythe_tagged] run scoreboard players set @s scythe_damage 15
execute as @e[scores={scythe_damage=1..}] run scoreboard players remove @s scythe_damage 1
execute as @e[scores={scythe_damage=1..}] store result score @s health2 run data get entity @s Health
tag @e remove scythe_lowhp
tag @e[scores={health2=0..2}] add scythe_lowhp
execute as @e[tag=!scythe_lowhp,scores={scythe_damage=1..}] store result score @s customdamage3 run data get entity @s Health
execute as @e[tag=!scythe_lowhp,scores={scythe_damage=1..}] store result entity @s Health float 1 run scoreboard players remove @s customdamage3 1
execute as @e[tag=enderscythe_tagged] run tag @s remove enderscythe_tagged


### SHIELDER WEAPON ###
execute as @a at @s unless entity @a[nbt={Inventory:[{id:"minecraft:stone_shovel",Count:1b,tag:{CanDestroy:["minecraft:blue_bed"]}}]},tag=class_shielder,distance=..150] run scoreboard players reset @s killedmob3
execute as @a[scores={killedmob3=5..}] run tag @s add shielder_usetotem
execute as @a[tag=shielder_usetotem] at @s run summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,ShowArms:0b,Small:0b,Marker:0b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["shieldertotembolt"]}
execute as @a[tag=shielder_usetotem] run scoreboard players reset @s killedmob3
execute as @a[tag=shielder_usetotem] run tag @s remove shielder_usetotem
execute as @e[tag=shieldertotembolt] at @s run particle minecraft:dust 0 0 1 1 ~ ~1 ~ 0.1 0.1 0.1 0.001 10 force
execute as @e[tag=shieldertotembolt] at @s run particle minecraft:dragon_breath ~ ~1 ~ 0.1 0.1 0.1 0.001 1 force
execute as @e[tag=shieldertotembolt] at @s unless entity @a[nbt={Inventory:[{id:"minecraft:stone_shovel",Count:1b,tag:{CanDestroy:["minecraft:blue_bed"]}}]},tag=class_shielder,distance=..150] run kill @s
execute as @e[tag=shieldertotembolt] at @s run tp @s ^ ^ ^0.6 facing entity @a[nbt={Inventory:[{id:"minecraft:stone_shovel",Count:1b,tag:{CanDestroy:["minecraft:blue_bed"]}}]},tag=class_shielder,sort=nearest,limit=1]
execute as @e[tag=shieldertotembolt] at @s run tag @a[nbt={Inventory:[{id:"minecraft:stone_shovel",Count:1b,tag:{CanDestroy:["minecraft:blue_bed"]}}]},tag=class_shielder,distance=..1] add shieldertotemgettinghealed
execute as @a[tag=shieldertotemgettinghealed] at @s run kill @e[tag=shieldertotembolt,distance=..1]
execute as @a[tag=shieldertotemgettinghealed] at @s run playsound minecraft:custom.magicthud master @a
execute as @a[tag=shieldertotemgettinghealed] run effect give @s instant_health
execute as @a[tag=shieldertotemgettinghealed] run tag @s remove shieldertotemgettinghealed