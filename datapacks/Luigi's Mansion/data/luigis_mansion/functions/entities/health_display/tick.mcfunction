scoreboard players operation #temp GhostNr = @s GhostNr
execute as @e[tag=body] if score @s GhostNr = #temp GhostNr run tag @s add this_ghost
execute as @e[tag=spawned_health_display] if score @s GhostNr = #temp GhostNr run tag @s add this_ghost
scoreboard players reset #temp GhostNr
execute at @e[tag=this_ghost,tag=!body,limit=1] run function luigis_mansion:entities/health_display/update
execute unless entity @e[tag=this_ghost,tag=!body,limit=1] run tag @s add dead
tag @e[tag=this_ghost] remove this_ghost