function luigis_mansion:old_animations/furniture/roll
execute if entity @s[scores={PoltergustSound=0,FurnitureVacuum=1..10}] run playsound luigis_mansion:furniture.search.roll block @a[tag=same_room] ~ ~ ~ 1 0.9
execute if entity @s[scores={PoltergustSound=0,FurnitureVacuum=11..20}] run playsound luigis_mansion:furniture.search.roll block @a[tag=same_room] ~ ~ ~ 1 1
execute if entity @s[scores={PoltergustSound=0,FurnitureVacuum=21..30}] run playsound luigis_mansion:furniture.search.roll block @a[tag=same_room] ~ ~ ~ 1 1.1
execute if entity @s[scores={PoltergustSound=0,FurnitureVacuum=31..40}] run playsound luigis_mansion:furniture.search.roll block @a[tag=same_room] ~ ~ ~ 1 1.2
execute if entity @s[scores={PoltergustSound=0,FurnitureVacuum=41..}] run playsound luigis_mansion:furniture.search.roll block @a[tag=same_room] ~ ~ ~ 1 1.3
scoreboard players set @s[scores={PoltergustSound=0,FurnitureVacuum=1..}] PoltergustSound 3
tag @s add was_shaking