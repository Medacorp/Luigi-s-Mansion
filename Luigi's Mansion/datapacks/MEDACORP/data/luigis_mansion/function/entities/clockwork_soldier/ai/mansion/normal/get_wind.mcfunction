tag @s add visible
data modify storage luigis_mansion:data entity set value {tags:["this_wind"]}
execute store result storage luigis_mansion:data entity.owner int 1 run scoreboard players get @s GhostNr
function luigis_mansion:spawn_entities/vacuumable_object/wind