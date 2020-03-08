### CRAFTING ###

### BLOODY EDGE ###
execute as @e[type=item,nbt={Item:{id:"minecraft:diamond",Count:2b}}] at @s run execute as @e[type=item,nbt={Item:{tag:{redstoneessence:1b},Count:10b}},limit=1,distance=0..1,sort=nearest] at @s if block ~ ~-1 ~ emerald_block run summon minecraft:item ~ ~ ~ {Tags:["freshcraft_bloodyedge"],Item:{id:"minecraft:diamond_sword",Count:1b,tag:{CanDestroy:["minecraft:green_bed"],display:{Name:'{"text":"Bloody Edge","color":"dark_red","bold":true}',Lore:['{"text":"Damage with a price...","color":"red","italic":true}','{"text":".","color":"black"}','{"text":"When in main hand:","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}','{"text":" 25 Attack Damage","color":"dark_green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}','{"text":" 0.9 Attack Speed","color":"dark_green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}']},HideFlags:62,CustomModelData:2,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:25,Operation:0,UUIDLeast:869376,UUIDMost:101537,Slot:"mainhand"},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-3.1,Operation:0,UUIDLeast:251804,UUIDMost:705673,Slot:"mainhand"}]}}}

execute as @e[tag=freshcraft_bloodyedge] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:diamond",Count:2b}},sort=nearest,limit=1]
execute as @e[tag=freshcraft_bloodyedge] at @s run kill @e[type=item,nbt={Item:{tag:{redstoneessence:1b},Count:10b}},limit=1,sort=nearest]
execute as @e[tag=freshcraft_bloodyedge] at @s run playsound minecraft:block.anvil.use master @a
execute as @e[tag=freshcraft_bloodyedge] at @s run playsound minecraft:custom.blood_launch master @a
execute as @e[tag=freshcraft_bloodyedge] run tag @s remove freshcraft_bloodyedge


### ABILITY ###
execute as @a[nbt={SelectedItem:{id:"minecraft:diamond_sword",Count:1b,tag:{CanDestroy:["minecraft:green_bed"]}}}] run tag @s add usingbloodyedge
execute as @a[nbt=!{SelectedItem:{id:"minecraft:diamond_sword",Count:1b,tag:{CanDestroy:["minecraft:green_bed"]}}}] run tag @s remove usingbloodyedge
execute as @a[scores={bloodyswing=1..},tag=usingbloodyedge] run effect give @s instant_damage
execute as @a[scores={bloodyswing=1..},tag=usingbloodyedge] run effect give @s wither 5 0 true
execute as @a[scores={bloodyswing=1..}] run scoreboard players reset @s bloodyswing