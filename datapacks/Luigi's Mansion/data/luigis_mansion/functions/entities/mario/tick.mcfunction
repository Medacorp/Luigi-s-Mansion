scoreboard players operation #temp PassiveNr = @s PassiveNr
execute as @e[tag=model_piece,scores={PassiveNr=-2147483648..}] if score @s PassiveNr = #temp PassiveNr run tag @s add this_model

execute if entity @s[tag=portrificationizing,tag=!remove_from_existence] run function luigis_mansion:entities/mario/portrificationizing
execute if entity @s[tag=normal] run function #luigis_mansion:entities/mario/tick

execute at @s[tag=panic] run function luigis_mansion:animations/mario/panic
execute at @s[tag=shot_out] run function luigis_mansion:animations/mario/shot_out
execute at @s[tag=stuck] run function luigis_mansion:animations/mario/stuck
execute at @s[tag=dizzy] run function luigis_mansion:animations/mario/dizzy

scoreboard players reset #temp PassiveNr
tag @e[tag=this_model,limit=1] add found_owner
tag @e[tag=this_model,limit=1] remove this_model
execute at @s[scores={LightX=-2147483648..}] run function luigis_mansion:other/cast_shadow/2_tall