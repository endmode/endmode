### MSG TO PICK A CLASS ###
scoreboard players add @a[tag=!class_tank,tag=!class_attack,tag=!class_heal,tag=!class_assassin,tag=!class_shielder] classmsg 1
execute as @a[scores={classmsg=300}] run tellraw @s ["",{"text":"Choose your class.\n"},{"text":"Tank","color":"aqua","clickEvent":{"action":"run_command","value":"/tag @s add class_tank"},"hoverEvent":{"action":"show_text","value":"Tank class gives you more than usual protection."}},{"text":"\n"},{"text":"Damager","color":"aqua","clickEvent":{"action":"run_command","value":"/tag @s add class_attack"},"hoverEvent":{"action":"show_text","value":"Damager class gives you extraordinary damaging abilities."}},{"text":"\n"},{"text":"Healer","color":"aqua","clickEvent":{"action":"run_command","value":"/tag @s add class_heal"},"hoverEvent":{"action":"show_text","value":"Healer class is necessary for every group as it gives you the ability to help yourself and others."}}]
execute as @a[scores={classmsg=301}] run tellraw @s {"text":"Assassin","color":"aqua","clickEvent":{"action":"run_command","value":"/tag @s add class_assassin"},"hoverEvent":{"action":"show_text","value":"Swift Assassin class which gives you strength from attacking enemies."}}
execute as @a[scores={classmsg=302}] run tellraw @s {"text":"Shielder","color":"aqua","clickEvent":{"action":"run_command","value":"/tag @s add class_shielder"},"hoverEvent":{"action":"show_text","value":"Shielder is a support class which gives you the health and the resistance as well as for your teammates."}}
execute as @a[scores={classmsg=303..}] run scoreboard players reset @s classmsg


### PICK ONLY 1 CLASS ###
execute as @a[tag=class_tank] at @s if entity @p[tag=class_tank] run tag @s remove class_heal
execute as @a[tag=class_tank] at @s if entity @p[tag=class_tank] run tag @s remove class_attack
execute as @a[tag=class_tank] at @s if entity @p[tag=class_tank] run tag @s remove class_assassin
execute as @a[tag=class_tank] at @s if entity @p[tag=class_tank] run tag @s remove class_shielder
execute as @a[tag=class_heal] at @s if entity @p[tag=class_heal] run tag @s remove class_attack
execute as @a[tag=class_heal] at @s if entity @p[tag=class_heal] run tag @s remove class_tank
execute as @a[tag=class_heal] at @s if entity @p[tag=class_heal] run tag @s remove class_assassin
execute as @a[tag=class_heal] at @s if entity @p[tag=class_heal] run tag @s remove class_shielder
execute as @a[tag=class_attack] at @s if entity @p[tag=class_attack] run tag @s remove class_tank
execute as @a[tag=class_attack] at @s if entity @p[tag=class_attack] run tag @s remove class_heal
execute as @a[tag=class_attack] at @s if entity @p[tag=class_attack] run tag @s remove class_assassin
execute as @a[tag=class_attack] at @s if entity @p[tag=class_attack] run tag @s remove class_shielder
execute as @a[tag=class_assassin] at @s if entity @p[tag=class_assassin] run tag @s remove class_heal
execute as @a[tag=class_assassin] at @s if entity @p[tag=class_assassin] run tag @s remove class_tank
execute as @a[tag=class_assassin] at @s if entity @p[tag=class_assassin] run tag @s remove class_attack
execute as @a[tag=class_assassin] at @s if entity @p[tag=class_assassin] run tag @s remove class_shielder
execute as @a[tag=class_shielder] at @s if entity @p[tag=class_shielder] run tag @s remove class_assassin
execute as @a[tag=class_shielder] at @s if entity @p[tag=class_shielder] run tag @s remove class_heal
execute as @a[tag=class_shielder] at @s if entity @p[tag=class_shielder] run tag @s remove class_attack
execute as @a[tag=class_shielder] at @s if entity @p[tag=class_shielder] run tag @s remove class_tank


### TANK CLASS ###
scoreboard players add @a[tag=class_tank] tank_absorb 1
effect give @a[scores={tank_absorb=300}] minecraft:absorption 16 0 true
scoreboard players reset @a[scores={tank_absorb=301..}] tank_absorb


### ATTACK CLASS ###
execute as @a[tag=class_attack] at @s if entity @p[tag=class_attack] run effect give @s minecraft:strength 1 0 true


### HEALER CLASS ###
execute as @a[scores={heal_particle=16..17}] at @s run particle minecraft:heart ~ ~2.2 ~ 0.01 0.01 0.01 0.001 0 force
scoreboard players reset @a[tag=!class_heal] heal_particle
scoreboard players add @a[tag=class_heal] heal_particle 1
scoreboard players reset @a[scores={heal_particle=20}] heal_particle
scoreboard players reset @a[tag=!class_heal] heal_selfheal
scoreboard players add @a[tag=class_heal] heal_selfheal 1
effect give @a[scores={heal_selfheal=3600}] minecraft:regeneration 2 5 true
scoreboard players reset @a[scores={heal_selfheal=3601..}] heal_selfheal
execute as @a[tag=!class_heal] run tag @s remove heal_particletag

scoreboard players reset @a[tag=!class_heal] heal_allheal
scoreboard players add @a[tag=class_heal] heal_allheal 1
execute as @a[scores={heal_allheal=100}] at @s run effect give @a[distance=1..50] minecraft:regeneration 6 0
scoreboard players reset @a[scores={heal_allheal=101}] heal_allheal


### ASSASSIN CLASS ###
execute as @a[tag=class_assassin] at @s if entity @p[tag=class_assassin] run effect give @s minecraft:speed 1 0 true
execute as @a[tag=class_assassin,scores={asasin_dmg=300..},tag=!assassin_done30dmg] run tag @s add assassin_done30dmg
execute as @a[tag=assassin_done30dmg] run effect give @s speed 4 1
execute as @a[tag=assassin_done30dmg] run effect give @s strength 4 0
execute as @a[tag=assassin_done30dmg] run scoreboard players reset @s asasin_dmg
execute as @a[tag=assassin_done30dmg] run tag @s remove assassin_done30dmg


### SHIELDER CLASS ###
execute as @a[tag=class_shielder] run scoreboard players add @s shielder_absorb 1
execute as @a[scores={shielder_absorb=1}] run effect give @s minecraft:absorption 31 0 true
execute as @a[scores={shielder_absorb=600..}] run scoreboard players reset @s shielder_absorb
execute as @a[tag=class_shielder] at @s run effect give @a[distance=1..50] minecraft:resistance 1 0
execute as @a[tag=class_shielder] run scoreboard players add @s shield_particle 1
execute as @a[scores={shield_particle=20}] run scoreboard players reset @s shield_particle
execute as @a[tag=!class_shielder] run scoreboard players reset @s shield_particle
execute as @a[scores={shield_particle=16..17}] at @s run particle minecraft:angry_villager ~ ~2.2 ~ 0.01 0.01 0.01 0.001 0 force