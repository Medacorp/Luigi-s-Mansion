scoreboard players set @s[tag=!open] FurnitureVacuum 0
execute if entity @s[tag=!open] if entity @e[distance=..0.1,tag=ghost,tag=hiding_in_furniture,limit=1] run tag @s add open
scoreboard players add @s[tag=open] FurnitureVacuum 1
execute if entity @s[scores={FurnitureVacuum=20}] run function luigis_mansion:entities/furniture/search/generic