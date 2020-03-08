### ARKHALIS ###
scoreboard players set @a[nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CanDestroy:["minecraft:air"]}}}] arkhalis 1
scoreboard players add @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CanDestroy:["minecraft:air"]}}}] arkhalis 1
tag @a[scores={arkhalis=2..}] add holding_arkhalis
tag @a[scores={arkhalis=1}] remove holding_arkhalis
execute if entity @a[tag=holding_arkhalis,scores={rightclick=1..}] run summon minecraft:armor_stand 0 0 0 {NoGravity:1b,Invulnerable:1b,ShowArms:0b,Small:0b,Marker:0b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["arkhalis_bolt"]}
scoreboard players add @e[tag=arkhalis_bolt] arkhalis_bolt 1
execute as @e[scores={arkhalis_bolt=1}] run tp @s @r[tag=holding_arkhalis,scores={rightclick=1..}]
execute as @e[scores={arkhalis_bolt=1..}] at @s run tp @s ^ ^ ^1.5 facing entity @e[distance=..15,sort=nearest,limit=1,type=!player,type=!mooshroom,type=!wandering_trader,type=!panda,type=!skeleton_horse,type=!item,type=!armor_stand,type=!experience_orb,type=!horse,type=!arrow,type=!villager,type=!cow,type=!pig,tag=!infectedalchemist,type=!parrot,type=!mule,type=!donkey,type=!chicken,type=!spectral_arrow,type=!wither,type=!wolf,type=!llama,type=!ender_dragon]
execute as @e[scores={arkhalis_bolt=1..}] at @s run tp @s ^ ^ ^0.8
execute as @e[scores={arkhalis_bolt=40..}] run kill @s
execute as @e[scores={arkhalis_bolt=1..}] at @s run tag @e[distance=..1,type=!player,type=!mooshroom,type=!wandering_trader,type=!panda,type=!skeleton_horse,type=!item,type=!armor_stand,type=!experience_orb,type=!horse,type=!arrow,type=!villager,type=!cow,type=!pig,tag=!infectedalchemist,type=!parrot,type=!mule,type=!donkey,type=!chicken,type=!spectral_arrow,type=!wither,type=!wolf,type=!llama,type=!ender_dragon] add arkhalis_tagged
execute as @e[tag=arkhalis_tagged] at @s run summon minecraft:firework_rocket ~ ~ ~ {Life:0,LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;1048559]}]}}}}
execute as @e[tag=arkhalis_bolt] at @s if entity @e[tag=arkhalis_tagged,distance=..1] run kill @s
execute as @e[tag=arkhalis_tagged] run kill @s
execute as @e[tag=arkhalis_bolt] at @s run particle minecraft:dust 0 1 1 1 ~ ~1 ~ 0.1 0.1 0.1 0.01 10 force
scoreboard players reset @a[scores={rightclick=1..}] rightclick