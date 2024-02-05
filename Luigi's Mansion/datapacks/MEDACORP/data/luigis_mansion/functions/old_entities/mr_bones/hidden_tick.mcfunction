scoreboard players operation #temp GhostNr = @s GhostNr
execute as @e[tag=model_piece] if score @s GhostNr = #temp GhostNr run tag @s add this_model

execute at @s run function luigis_mansion:old_entities/ghost/hidden_tick
execute at @s run function luigis_mansion:old_animations/mr_bones/idle
tag @s[tag=spawn,tag=!no_appear] add appear
tag @s remove spawn

execute unless entity @s[tag=!dead,tag=!remove_from_existence] run teleport @e[tag=this_model] ~ -100 ~
execute unless entity @s[tag=!dead,tag=!remove_from_existence] run tag @e[tag=this_model] add dead

scoreboard players reset #temp GhostNr
tag @e[tag=this_model] add found_owner
tag @e[tag=this_model] remove this_model