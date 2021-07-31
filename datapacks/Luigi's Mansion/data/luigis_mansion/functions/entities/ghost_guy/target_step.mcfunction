scoreboard players add @s Distance 1
execute positioned ^ ^ ^0.7 run tag @s[distance=..0.7] add has_target
execute if entity @s[tag=!has_target] positioned ^ ^ ^0.05 run function luigis_mansion:entities/ghost_guy/target_step