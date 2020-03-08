execute at @e[type=item,nbt={Item:{id:"minecraft:nether_star",Count:1b}}] if entity @e[tag=magic_armorstand,distance=..1] unless entity @e[scores={startedendmode=8..}] run tag @e[type=item,sort=nearest,limit=1] add endmode_netherstar
execute as @e[tag=endmode_netherstar] run scoreboard players add @s startingendmode 1
execute as @e[scores={startingendmode=1..100}] at @s run tp @s ~ ~0.083 ~
execute as @e[scores={startingendmode=1}] run data merge entity @s {NoGravity:1b,Item:{}}
execute as @e[scores={startingendmode=144}] run data merge entity @s {NoGravity:0b,Item:{}}
execute as @e[scores={startingendmode=300}] run tag @s remove endmode_netherstar
execute as @e[scores={startingendmode=100}] at @s run summon minecraft:firework_rocket ~ ~ ~ {Life:0,LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;8455167]}]}}}}
execute as @e[scores={startingendmode=100}] at @s run summon minecraft:firework_rocket ~ ~ ~ {Life:0,LifeTime:40,Tags:["endmodestartingfireworkrocket"],FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1b,Trail:1b,Colors:[I;8455167]}]}}}}
execute as @e[tag=endmode_netherstar] at @s run tp @s @e[tag=endmodestartingfireworkrocket,sort=nearest,limit=1]
execute as @e[scores={startingendmode=1}] run scoreboard players set @e[tag=startgame_armorstand] startedendmode 10
scoreboard players add @e[tag=startgame_armorstand] startedendmode 1
scoreboard players reset @e[scores={startedendmode=..9}] startedendmode
execute as @e[tag=endmode_netherstar] at @s run particle minecraft:dragon_breath ~ ~ ~ 0.1 0.1 0.1 0.01 3 force
execute as @e[scores={startingendmode=180}] run tellraw @a ["",{"text":"You Have Entered ","color":"white"},{"text":"Endmode","bold":true,"color":"dark_purple","hoverEvent":{"action":"show_text","value":"Endmode makes some mobs stronger, but they also drop better loot."}},{"text":".","color":"white"}]


### GIVE CLASS WEAPONS ###
execute as @a[tag=class_tank] if entity @e[scores={startingendmode=170}] run give @s minecraft:shield{CanDestroy:["minecraft:yellow_wool"],display:{Name:'{"text":"Corrupted Shield","color":"dark_purple","bold":true}',Lore:['{"text":"Has rage stored from the previous owner.","color":"gray"}']},HideFlags:63,CustomModelData:1,RepairCost:9999,Unbreakable:1b,Enchantments:[{id:"minecraft:unbreaking",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:5,Operation:0,UUIDLeast:82820,UUIDMost:7394,Slot:"offhand"},{AttributeName:"generic.knockbackResistance",Name:"generic.knockbackResistance",Amount:1000,Operation:0,UUIDLeast:420649,UUIDMost:496333,Slot:"offhand"}],BlockEntityTag:{Base:15,Patterns:[{Color:10,Pattern:"moj"}]}} 1
execute as @a[tag=class_attack] if entity @e[scores={startingendmode=170}] run give @s minecraft:golden_sword{display:{Name:'{"text":"Corrupted Sword","color":"dark_purple","bold":true}',Lore:['{"text":"Lost its wielder and the power it once had.","color":"gray","bold":false}']},HideFlags:15,CustomModelData:1,CanDestroy:["minecraft:green_wool"],RepairCost:9999,Unbreakable:1b,Enchantments:[{id:"minecraft:knockback",lvl:2s},{id:"minecraft:sweeping",lvl:5s}],AttributeModifiers:[{AttributeName:"generic.movementSpeed",Name:"generic.movementSpeed",Amount:0.08,Operation:0,UUIDLeast:425866,UUIDMost:535867,Slot:"mainhand"},{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:11,Operation:0,UUIDLeast:13932,UUIDMost:556991,Slot:"mainhand"},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-2.5,Operation:0,UUIDLeast:835818,UUIDMost:664651,Slot:"mainhand"}]} 1
execute as @a[tag=class_heal] if entity @e[scores={startingendmode=170}] run give @s minecraft:crossbow{display:{Name:'{"text":"Corrupted Crossbow","color":"dark_purple","bold":true}',Lore:['{"text":"Has weird healing abilities. May be because of its previous handler.","color":"gray","bold":false}']},HideFlags:15,CustomModelData:1,Unbreakable:1b,CanDestroy:["minecraft:red_wool"],RepairCost:9999,Enchantments:[{id:"minecraft:quick_charge",lvl:3s}]} 1
execute as @a[tag=class_assassin] if entity @e[scores={startingendmode=170}] run give @s minecraft:stone_hoe{CanDestroy:["minecraft:red_bed"],display:{Name:'{"text":"Corrupted Scythe","color":"dark_purple","bold":true}',Lore:['{"text":"Scythe which craves for blood to be spilled.","color":"gray"}']},HideFlags:63,Enchantments:[{id:"minecraft:quick_charge",lvl:3s}],Unbreakable:1b,CustomModelData:1,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:6,Operation:0,UUIDLeast:437016,UUIDMost:458423,Slot:"mainhand"}]} 1
execute as @a[tag=class_shielder] if entity @e[scores={startingendmode=170}] run give @s minecraft:stone_shovel{CanDestroy:["minecraft:blue_bed"],display:{Name:'{"text":"Corrupted Totem","color":"dark_purple","bold":true}',Lore:['{"text":"Converts death of others into your own favour.","color":"gray"}']},HideFlags:63,Unbreakable:1b,CustomModelData:3,Enchantments:[{id:"minecraft:efficiency",lvl:1s}]} 1


### DAMAGE IF TRYING TO HOLD OTHER CLASS WEAPON ###
effect give @a[nbt={SelectedItem:{id:"minecraft:golden_sword",Count:1b,tag:{CanDestroy:["minecraft:green_wool"]}}},tag=!class_attack] minecraft:instant_damage
effect give @a[nbt={SelectedItem:{id:"minecraft:crossbow",Count:1b,tag:{CanDestroy:["minecraft:red_wool"]}}},tag=!class_heal] minecraft:instant_damage
effect give @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CanDestroy:["minecraft:yellow_wool"]}}},tag=!class_tank] minecraft:instant_damage
effect give @a[nbt={SelectedItem:{id:"minecraft:stone_hoe",Count:1b,tag:{CanDestroy:["minecraft:red_bed"]}}},tag=!class_assassin] minecraft:instant_damage
effect give @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b,tag:{CanDestroy:["minecraft:yellow_wool"]}}]},tag=!class_tank] minecraft:instant_damage
effect give @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:golden_sword",Count:1b,tag:{CanDestroy:["minecraft:green_wool"]}}]},tag=!class_attack] minecraft:instant_damage
effect give @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:crossbow",Count:1b,tag:{CanDestroy:["minecraft:red_wool"]}}]},tag=!class_heal] minecraft:instant_damage
effect give @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:stone_hoe",Count:1b,tag:{CanDestroy:["minecraft:red_bed"]}}]},tag=!class_assassin] minecraft:instant_damage
execute as @a[nbt={Inventory:[{id:"minecraft:stone_shovel",Count:1b,tag:{CanDestroy:["minecraft:blue_bed"]}}]}] run scoreboard players add @s notshielder 1
execute as @a[nbt=!{Inventory:[{id:"minecraft:stone_shovel",Count:1b,tag:{CanDestroy:["minecraft:blue_bed"]}}]}] run scoreboard players reset @s notshielder
execute as @a[scores={notshielder=140..},tag=!class_shielder] run effect give @s minecraft:instant_damage
execute as @a[scores={notshielder=40..},tag=!class_shielder] run effect give @s blindness 1 0