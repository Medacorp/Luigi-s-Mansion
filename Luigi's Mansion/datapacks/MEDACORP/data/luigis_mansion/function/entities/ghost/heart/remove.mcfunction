scoreboard players operation #temp GhostNr = @s GhostNr
execute as @e[tag=ghost_heart] if score @s GhostNr = #temp GhostNr run tag @s add dead
scoreboard players reset #temp GhostNr
tag @s remove spawned_ghost_heart