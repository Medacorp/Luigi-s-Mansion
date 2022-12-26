function luigis_mansion:entities/ghost/turn_visible
function luigis_mansion:spawn_entities/vacuumable_object/wind
scoreboard players operation @e[distance=..0.7,tag=wind,limit=1] GhostNr = @s GhostNr
execute if score #mirrored Selected matches 0 run data modify entity @e[distance=..0.7,tag=wind,limit=1] Pose.Head[2] set value 90.0f
execute if score #mirrored Selected matches 1 run data modify entity @e[distance=..0.7,tag=wind,limit=1] Pose.Head[2] set value -90.0f