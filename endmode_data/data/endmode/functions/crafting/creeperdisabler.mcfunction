### CRAFTING ###
execute as @e[type=item,nbt={Item:{id:"minecraft:gunpowder",Count:4b}}] at @s run execute as @e[type=item,nbt={Item:{id:"minecraft:quartz",Count:16b}},limit=1,distance=0..1,sort=nearest] if block ~ ~-1 ~ emerald_block run summon minecraft:item ~ ~ ~ {Tags:["freshcraft_creeperdisable"],Item:{id:"minecraft:armor_stand",Count:1b,tag:{display:{Name:'{"text":"Creeper Deactivator","color":"dark_green","bold":true}',Lore:['{"text":"Disable creepers with the radius of 25 blocks.","color":"blue"}']},HideFlags:63,CustomModelData:1,Enchantments:[{id:"minecraft:protection",lvl:1s}],EntityTag:{CustomNameVisible:1b,Invulnerable:1b,ShowArms:0b,Small:0b,Marker:0b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["creeper_armorstand"],CustomName:'{"text":"Creeper Deactivator","color":"dark_green","bold":true}'}}}}

execute as @e[tag=freshcraft_creeperdisable] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:gunpowder",Count:4b}}]
execute as @e[tag=freshcraft_creeperdisable] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:quartz",Count:16b}}]
execute as @e[tag=freshcraft_creeperdisable] at @s run playsound minecraft:entity.creeper.death master @a
execute as @e[tag=freshcraft_creeperdisable] run tag @s remove freshcraft_creeperdisable


### ABILITY ###
execute as @e[tag=creeper_armorstand] at @s run tp @s ~ ~ ~ ~-3 ~
execute as @e[type=minecraft:creeper] at @s if entity @e[tag=creeper_armorstand,distance=..25] run tag @s add disabledcreeperlol
execute as @e[tag=disabledcreeperlol] at @s run particle minecraft:crit ~ ~1.8 ~ 0.1 0.1 0.1 0.2 2 force
execute as @e[tag=disabledcreeperlol] run data merge entity @s {Fuse:20000}
execute as @e[tag=creeper_armorstand] at @s run particle minecraft:crit ~ ~ ~ 0.3 1 0.3 0.1 5 force
execute as @a[tag=sneaking] at @s if entity @e[tag=creeper_armorstand,distance=..0.5] run summon minecraft:item ~ ~ ~ {Tags:["freshcraft_creeperdisable"],Item:{id:"minecraft:armor_stand",Count:1b,tag:{display:{Name:'{"text":"Creeper Deactivator","color":"dark_green","bold":true}',Lore:['{"text":"Disable creepers with the radius of 25 blocks.","color":"blue"}']},HideFlags:63,CustomModelData:1,Enchantments:[{id:"minecraft:protection",lvl:1s}],EntityTag:{CustomNameVisible:1b,Invulnerable:1b,ShowArms:0b,Small:0b,Marker:0b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["creeper_armorstand"],CustomName:'{"text":"Creeper Deactivator","color":"dark_green","bold":true}'}}}}
execute as @e[tag=sneaking] at @s if entity @e[tag=creeper_armorstand,distance=..0.5] run kill @e[tag=creeper_armorstand,distance=..0.5,limit=1]