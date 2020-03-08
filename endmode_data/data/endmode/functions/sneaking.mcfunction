execute as @a[scores={sneak=1..}] run tag @s add sneaking
execute as @a unless entity @s[scores={sneak=1..}] run tag @s remove sneaking
scoreboard players reset @a sneak