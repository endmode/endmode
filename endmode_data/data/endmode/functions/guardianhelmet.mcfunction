execute as @a[nbt={Inventory:[{Slot:103b,id:"minecraft:iron_helmet",Count:1b,tag:{CanDestroy:["minecraft:air"]}}]}] run replaceitem entity @s armor.head minecraft:diamond_hoe{CanDestroy:["minecraft:air"],display:{Name:'{"text":"Guardian Helmet","color":"white","bold":true,"italic":true,"underlined":true,"strikethrough":false,"obfuscated":false}'},HideFlags:63,Unbreakable:1b,CustomModelData:2} 1
execute as @a[nbt={SelectedItem:{id:"minecraft:diamond_hoe",Count:1b,tag:{CanDestroy:["minecraft:air"]}}}] run tag @s add guardianhelmet
execute as @a[tag=guardianhelmet] run give @s minecraft:iron_helmet{CanDestroy:["minecraft:air"],display:{Name:'{"text":"Guardian Helmet","color":"white","bold":true,"italic":true,"underlined":true,"strikethrough":false,"obfuscated":false}'},HideFlags:63} 1
execute as @a[tag=guardianhelmet] run clear @s diamond_hoe{CanDestroy:["minecraft:air"]} 1
execute as @a[tag=guardianhelmet] run tag @s remove guardianhelmet

















