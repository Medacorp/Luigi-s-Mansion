scoreboard players add @s Distance 1
execute positioned ^ ^ ^0.05 run tag @s[distance=..0.7] add has_target
execute if entity @s[tag=!has_target] positioned ^ ^ ^0.01 run function luigis_mansion:entities/clockwork_soldier/target_step