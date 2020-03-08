### STAT BUFF + HEAL IF PLAYER DIED ###
execute as @e[type=wither,tag=!witherboss] run data merge entity @s {Team:"wither",Glowing:1b,PersistenceRequired:1b,Invul:302,NoAI:0b,CanPickUpLoot:0b,Health:600f,Tags:["witherboss"]}
execute if entity @e[type=wither] run time set midnight
execute unless entity @e[tag=witherboss] run scoreboard players reset @a witherkilled
execute if entity @a[scores={witherkilled=1..}] run tag @e[tag=witherboss] add witherboss_heal
execute if entity @a[scores={witherkilled=1..}] at @e[tag=witherboss] run playsound minecraft:entity.wither.spawn master @a
execute as @a[scores={witherkilled=1..}] run scoreboard players reset @s witherkilled
execute as @e[tag=witherboss_heal] store result score @s customdamage run data get entity @s Health
execute as @e[tag=witherboss_heal] store result entity @s Health float 1 run scoreboard players set @s customdamage 600
execute as @e[tag=witherboss_heal] run tag @s remove witherboss_heal


### MUSIC ###
execute if entity @e[tag=witherboss] run scoreboard players add @e[tag=startgame_armorstand] withermusic 1
execute if entity @e[scores={withermusic=1}] run stopsound @a
execute if entity @e[scores={withermusic=2}] at @a run playsound minecraft:custom.withermusic music @a
execute as @e[scores={withermusic=5740..}] run scoreboard players reset @s withermusic
execute unless entity @e[tag=witherboss] run stopsound @a music minecraft:custom.withermusic
execute unless entity @e[tag=witherboss] run scoreboard players reset @e withermusic
execute if entity @e[tag=witherboss] run scoreboard players set @e[tag=startgame_armorstand] withermusic2 1
execute as @e[scores={withermusic2=1}] unless entity @e[tag=witherboss] at @a run playsound minecraft:custom.withermusicend music @a
execute as @e[scores={withermusic2=1}] unless entity @e[tag=witherboss] run scoreboard players reset @s withermusic2


### WITHER ONLY SPAWN IN NETHER ###
execute as @e[tag=witherboss,nbt=!{Dimension:-1}] run tag @s add wither_incorrectdimension
execute as @e[tag=wither_incorrectdimension] at @s run summon minecraft:item ~ ~ ~ {Tags:["killstarlol"],Passengers:[{id:"minecraft:item",Item:{id:"minecraft:wither_skeleton_skull",Count:3b}}],Item:{id:"minecraft:soul_sand",Count:4b}}
execute as @e[tag=wither_incorrectdimension] run kill @s
execute as @e[tag=killstarlol] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:nether_star",Count:1b}},limit=1,sort=nearest]
execute as @e[tag=killstarlol] run tag @s remove killstarlol


### ENCASE PLAYER IN A BOX ###
execute as @e[tag=witherboss] run scoreboard players add @s wither_ability1 1
execute as @e[scores={wither_ability1=1}] at @s run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,ShowArms:0b,Small:0b,Marker:0b,Invisible:1b,NoBasePlate:0b,PersistenceRequired:1b,Tags:["wither_ability1_armorstand"]}
execute as @e[scores={wither_ability1=1}] run scoreboard players set @s wither_ability1 2
execute as @e[tag=wither_ability1_armorstand] unless entity @e[type=wither] run kill @s
execute as @e[tag=wither_ability1_armorstand] at @s run fill ~16 ~8 ~16 ~-16 ~-8 ~-16 minecraft:nether_bricks hollow
execute as @e[tag=wither_ability1_armorstand] at @s run fill ~15 ~7 ~15 ~-15 ~-7 ~-15 minecraft:nether_bricks hollow
execute as @a[nbt={Dimension:-1}] at @s unless entity @e[tag=wither_ability1_armorstand,distance=..25] run tp @s @e[tag=wither_ability1_armorstand,limit=1]
execute as @e[tag=wither_ability1_armorstand] at @s run kill @e[nbt={Item:{id:"minecraft:nether_bricks"}},distance=..25]


### TELEPORT TO WITHERAB1 ARMORSTAND ###
execute as @e[tag=witherboss] run scoreboard players add @s wither_ability2 1
execute as @e[scores={wither_ability2=320}] run tp @s @e[tag=wither_ability1_armorstand,limit=1,sort=nearest]
execute as @e[scores={wither_ability2=321..}] run scoreboard players set @s wither_ability2 120
execute as @e[scores={wither_ability2=320}] at @a run playsound minecraft:custom.witherab1 master @a ~ ~ ~ 0.6
execute as @e[scores={wither_ability2=320}] run effect give @a blindness 2 5 true
execute as @a at @s if entity @e[scores={wither_ability2=320}] run tp @s ~ ~ ~ facing entity @e[tag=wither_ability1_armorstand,limit=1,sort=nearest]
execute as @e[scores={wither_ability2=320}] run scoreboard players set @s wither_ability2 321


### SUMMON WITHER SKELETONS ###
execute as @e[tag=witherboss] run scoreboard players add @s wither_ability3 1
execute as @e[scores={wither_ability3=420}] at @e[tag=wither_ability1_armorstand] run summon minecraft:wither_skeleton ~ ~ ~ {Team:"wither",Tags:["witherminion"],DeathLootTable:"-",ActiveEffects:[{Id:8b,Amplifier:255b,Duration:199980,ShowParticles:0b}],Attributes:[{Name:generic.followRange,Base:50},{Name:generic.attackDamage,Base:12}]}
execute as @e[scores={wither_ability3=421..}] run scoreboard players set @s wither_ability3 221
execute as @e[scores={wither_ability3=420}] at @a run playsound minecraft:custom.witherab1 master @a ~ ~ ~ 0.6
execute as @e[scores={wither_ability3=420}] run effect give @a slowness 1 5 true
execute as @e[scores={wither_ability3=420}] run scoreboard players set @s wither_ability3 421
execute as @e[tag=witherminion] unless entity @e[tag=witherboss] run kill @s
















