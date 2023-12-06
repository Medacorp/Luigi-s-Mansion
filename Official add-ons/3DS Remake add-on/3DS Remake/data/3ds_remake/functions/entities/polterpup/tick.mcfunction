scoreboard players operation #temp GhostNr = @s GhostNr
execute as @e[tag=model_piece,scores={GhostNr=-2147483648..}] if score @s GhostNr = #temp GhostNr run tag @s add this_model

execute at @s run teleport @s ~ ~0.6 ~
execute as @e[tag=this_model] at @s run teleport @s ~ ~0.6 ~

execute at @s run function 3ds_remake:old_animations/polterpup/save_luigi

execute at @s run teleport @s ~ ~-0.6 ~
execute as @e[tag=this_model] at @s run teleport @s ~ ~-0.6 ~

execute at @s unless block ~ ~1.3 ~ #luigis_mansion:ghosts_ignore run particle minecraft:dust 1 1 1 1 ~ ~1.3 ~ 0.5 0.5 0.5 1 20 normal

scoreboard players reset #temp GhostNr
tag @e[tag=this_model] add found_owner
tag @e[tag=this_model] remove this_model
execute at @s[scores={LightX=-2147483648..}] run function luigis_mansion:other/cast_shadow/1_tall