execute as @p at @s run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,ShowArms:0b,Small:0b,Marker:0b,Invisible:0b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["startgame_armorstand"],CustomName:'{"text":"spawn"}'}
execute as @e[tag=startgame_armorstand] at @s run setworldspawn