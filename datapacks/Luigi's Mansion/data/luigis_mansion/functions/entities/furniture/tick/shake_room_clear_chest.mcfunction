function luigis_mansion:animations/furniture/shake
execute if entity @s[scores={Sound=0},tag=!open] run function luigis_mansion:blocks/search_sound/chest
scoreboard players set @s[scores={Sound=0},tag=!open] Sound 20
tag @s add was_shaking