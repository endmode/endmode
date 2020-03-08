execute as @a[scores={load=1..}] run scoreboard players add @s load 1
execute as @a[scores={load=2..4}] run function endmode:objectives_whenrun
execute as @a[scores={load=5}] unless entity @e[tag=startgame_armorstand] run function endmode:startgame
execute as @a[scores={load=6}] run scoreboard players reset @a load