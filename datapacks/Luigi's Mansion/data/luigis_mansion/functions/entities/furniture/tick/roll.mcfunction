function luigis_mansion:animations/furniture/roll
execute if entity @s[scores={Sound=0,FurnitureSearch=1..5}] run playsound luigis_mansion:block.search.roll block @a[tag=same_room] ~ ~ ~ 1 1
execute if entity @s[scores={Sound=0,FurnitureSearch=6..10}] run playsound luigis_mansion:block.search.roll block @a[tag=same_room] ~ ~ ~ 1 1.25
execute if entity @s[scores={Sound=0,FurnitureSearch=11..15}] run playsound luigis_mansion:block.search.roll block @a[tag=same_room] ~ ~ ~ 1 1.5
execute if entity @s[scores={Sound=0,FurnitureSearch=16..20}] run playsound luigis_mansion:block.search.roll block @a[tag=same_room] ~ ~ ~ 1 1.75
execute if entity @s[scores={Sound=0,FurnitureSearch=21..}] run playsound luigis_mansion:block.search.roll block @a[tag=same_room] ~ ~ ~ 1 2
scoreboard players set @s[scores={Sound=0,FurnitureSearch=1..}] Sound 5
tag @s add was_shaking