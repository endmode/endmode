### DIAMONDS ###
execute as @e[nbt={Item:{id:"minecraft:diamond"}}] run data merge entity @s {Item:{id:"minecraft:coal",tag:{display:{Name:'{"text":"Weird Diamond"}',Lore:['{"text":"A word has been spread that","color":"blue"}','{"text":"the alchemist could help you.","color":"blue"}']},HideFlags:63,weirddiamond:1b,CustomModelData:1}}}
execute as @e[type=item,nbt={Item:{tag:{weirddiamond:1b}}}] at @s if entity @e[tag=diamonddisinfecter2] run data merge entity @s {Item:{id:"minecraft:diamond",tag:{display:{Name:'{"text":"Diamond"}',Lore:['{"text":"Saved Diamond","color":"blue"}']}},normaldiamond:1b}}
execute if entity @e[tag=diamonddisinfecter] run tag @e[tag=startgame_armorstand] add diamonddisinfecter2
execute as @e[tag=diamonddisinfecter] at @s run particle minecraft:dust 0 0 1 1 ~ ~1 ~ 0.2 0.5 0.2 0.2 3 force


### BOSS SUMMON ###
execute if entity @e[nbt={Item:{id:"minecraft:glass_bottle",Count:10b}}] run execute as @e[nbt={Item:{id:"minecraft:glass_bottle",Count:10b}}] at @s if block ~ ~-1 ~ gold_block run scoreboard players add @s alchemist_sum 1
execute as @e[scores={alchemist_sum=100}] at @s run summon minecraft:enderman ~ ~ ~ {Glowing:1b,CustomNameVisible:1b,PersistenceRequired:1b,CanPickUpLoot:0b,Health:200f,Tags:["infectedalchemist"],CustomName:'{"text":"Infected Alchemist","color":"dark_blue","bold":true}',ArmorItems:[{id:"minecraft:diamond",Count:0b},{id:"minecraft:diamond",Count:0b},{id:"minecraft:diamond",Count:0b},{id:"minecraft:armor_stand",Count:1b,tag:{display:{Name:'{"text":"Diamond Disinfecter","color":"dark_blue","bold":true}',Lore:['{"text":"Saves every Diamond in the world.","color":"white"}']},HideFlags:63,CustomModelData:3,Enchantments:[{id:"minecraft:protection",lvl:1s}],EntityTag:{CustomNameVisible:1b,Invulnerable:1b,ShowArms:0b,Small:0b,Marker:0b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["diamonddisinfecter"],CustomName:'{"text":"Diamond Disinfecter","color":"dark_blue","bold":true}'}}}],ArmorDropChances:[0.100F,0.200F,0.500F,1.000F],ActiveEffects:[{Id:12b,Amplifier:50b,Duration:9999,ShowParticles:1b},{Id:28b,Amplifier:1b,Duration:1,ShowParticles:0b}],Attributes:[{Name:generic.maxHealth,Base:200},{Name:generic.armor,Base:8}]}
execute as @e[scores={alchemist_sum=101}] at @s run kill @s


### MUSIC ###
execute if entity @e[tag=infectedalchemist] run scoreboard players add @e[tag=startgame_armorstand] alchemistmusic 1
execute if entity @e[scores={alchemistmusic=1}] run stopsound @a
execute if entity @e[scores={alchemistmusic=2}] at @a run playsound minecraft:custom.infectedalchemistmusic music @a
execute as @e[scores={alchemistmusic=3800..}] run scoreboard players reset @s alchemistmusic
execute unless entity @e[tag=infectedalchemist] run stopsound @a music minecraft:custom.infectedalchemistmusic
execute unless entity @e[tag=infectedalchemist] run scoreboard players reset @e alchemistmusic
execute if entity @e[tag=infectedalchemist] run scoreboard players set @e[tag=startgame_armorstand] alchemistmusic2 1
execute as @e[scores={alchemistmusic2=1}] unless entity @e[tag=infectedalchemist] at @a run playsound minecraft:custom.infectedalchemistmusicend music @a
execute as @e[scores={alchemistmusic2=1}] unless entity @e[tag=infectedalchemist] run scoreboard players reset @s alchemistmusic2


### BOSSBAR + PARTICLES + FULL HP THING ###
execute if entity @e[tag=infectedalchemist] store result bossbar minecraft:infectedalchemist value run data get entity @e[tag=infectedalchemist,limit=1] Health
execute as @a if entity @e[tag=infectedalchemist] run bossbar set minecraft:infectedalchemist players @a
execute as @a unless entity @e[tag=infectedalchemist] run bossbar set minecraft:infectedalchemist players
execute as @e[tag=infectedalchemist] at @s run particle minecraft:dragon_breath ~ ~1.3 ~ 0.3 1 0.3 0.01 2 force
execute as @e[tag=infectedalchemist] store result score @s alchemisthealth run data get entity @s Health
execute as @e[scores={alchemisthealth=..100}] at @s run particle minecraft:dust 1 0 0 1 ~ ~1.3 ~ 0.4 1 0.4 0.01 5 force
execute if entity @e[scores={alchemisthealth=200}] run effect give @a blindness 1 1
execute if entity @e[scores={alchemisthealth=200}] run effect give @a slowness 1 1
execute as @e[scores={alchemisthealth=200}] run scoreboard players add @s alchemisttext1 1
execute as @e[scores={alchemisttext1=1}] run tellraw @a ["",{"text":"The ","color":"white"},{"text":"Alchemist","color":"dark_purple"},{"text":" has poisoned you!!","color":"white"}]
execute as @e[scores={alchemisthealth=..199}] run scoreboard players reset @s alchemisttext1
execute as @e[tag=infectedalchemist] run scoreboard players add @s alchemistspawn 1
execute as @e[scores={alchemistspawn=1}] at @a run playsound minecraft:block.end_portal.spawn master @a
execute as @e[tag=infectedalchemist] run scoreboard players add @s alchemisttext2 1
execute as @e[scores={alchemisthealth=101..}] run scoreboard players reset @s alchemisttext2
execute as @e[scores={alchemisttext2=1}] run tellraw @a ["",{"text":"The "},{"text":"Alchemist","color":"dark_purple"},{"text":" is angered!!"}]
execute if entity @e[tag=infectedalchemist] run time set midnight


### HEAL WHEN PLAYER DIES ###
execute unless entity @e[tag=infectedalchemist] run scoreboard players reset @a alchemistkilled
execute if entity @a[scores={alchemistkilled=1..}] run effect give @e[tag=infectedalchemist] minecraft:instant_health 1 10
execute if entity @a[scores={alchemistkilled=1..}] at @e[tag=infectedalchemist] run playsound minecraft:entity.enderman.stare master @a
execute as @a[scores={alchemistkilled=1..}] run scoreboard players reset @s alchemistkilled


### BOSS ABILITY - TELEPORT TO BOSS ###
scoreboard players add @e[tag=infectedalchemist] alchemist_ab1 1
execute as @e[scores={alchemist_ab1=250}] at @s run spreadplayers ~ ~ 3 5 false @a
execute as @e[scores={alchemist_ab1=250}] at @s run playsound minecraft:entity.enderman.teleport master @a
execute as @e[scores={alchemist_ab1=251..}] run scoreboard players reset @s alchemist_ab1


### BOSS ABILITY - TELEPORT TO PLAYER ###
scoreboard players add @e[tag=infectedalchemist] alchemist_ab2 1
execute as @e[scores={alchemist_ab2=150}] at @r run spreadplayers ~ ~ 3 5 false @s
execute as @e[scores={alchemist_ab2=150}] at @s run playsound minecraft:entity.enderman.teleport master @a
execute as @e[scores={alchemist_ab2=151..}] run scoreboard players reset @s alchemist_ab2


### BOSS ABILITY - TURN PLAYER AROUND ###
scoreboard players add @e[tag=infectedalchemist] alchemist_ab3 1
execute if entity @e[scores={alchemist_ab3=120}] as @a at @s run tp @s ~ ~ ~ ~180 ~
execute as @e[scores={alchemist_ab3=120}] at @a run playsound minecraft:block.end_portal_frame.fill master @a
execute as @e[scores={alchemist_ab3=121..}] run scoreboard players reset @s alchemist_ab3


### BOSS ABILITY - EFFECTS IF PLAYER IS IN WATER ###
execute as @a at @s if entity @e[tag=infectedalchemist] if block ~ ~-1 ~ water run effect give @s blindness 1 1 true
execute as @a at @s if entity @e[tag=infectedalchemist] if block ~ ~-1 ~ water run effect give @s night_vision 1 1 true
execute as @a at @s if entity @e[tag=infectedalchemist] if block ~ ~-1 ~ water run effect give @s hunger 1 10 true
execute as @a at @s if entity @e[tag=infectedalchemist] if block ~ ~ ~ water run effect give @s blindness 1 1 true
execute as @a at @s if entity @e[tag=infectedalchemist] if block ~ ~ ~ water run effect give @s night_vision 1 1 true
execute as @a at @s if entity @e[tag=infectedalchemist] if block ~ ~ ~ water run effect give @s hunger 1 10 true


### BOSS ABILITY - LOW HP RAPID TELEPORT ###
execute as @e[scores={alchemisthealth=..100}] run scoreboard players add @s alchemist_ab4 1
execute as @e[scores={alchemist_ab4=1..10}] at @s run spreadplayers ~ ~ 2 3 false @a
execute as @e[scores={alchemist_ab4=1..10}] at @s run playsound minecraft:entity.enderman.teleport master @a
execute as @e[scores={alchemist_ab4=30..40}] at @s run spreadplayers ~ ~ 2 3 false @a
execute as @e[scores={alchemist_ab4=30..40}] at @s run playsound minecraft:entity.enderman.teleport master @a
execute as @e[scores={alchemist_ab4=60..70}] at @s run spreadplayers ~ ~ 2 3 false @a
execute as @e[scores={alchemist_ab4=60..70}] at @s run playsound minecraft:entity.enderman.teleport master @a
execute as @e[scores={alchemist_ab4=270..}] run scoreboard players reset @s alchemist_ab4


### BOSS ABILITY - LOW HP ENDERMITE SPAWNING ###
execute as @e[scores={alchemisthealth=..100}] run scoreboard players add @s alchemist_ab5 1
execute as @e[scores={alchemist_ab5=40}] at @s run summon minecraft:endermite ~ ~ ~ {Health:10f,PlayerSpawned:0b,Tags:["alchemist_endermites"],Attributes:[{Name:generic.maxHealth,Base:10},{Name:generic.followRange,Base:9999},{Name:generic.knockbackResistance,Base:100},{Name:generic.attackDamage,Base:8}]}
execute as @e[scores={alchemist_ab5=40}] at @s run playsound minecraft:entity.enderman.scream master @a
execute as @e[scores={alchemist_ab5=40}] run scoreboard players set @s alchemist_ab5 41
execute as @e[scores={alchemist_ab5=41..}] run scoreboard players reset @s alchemist_ab5
execute unless entity @e[tag=infectedalchemist] run kill @e[tag=alchemist_endermites]


