tag @s add visible
data modify storage luigis_mansion:data entity set value {tags:["this_wind"]}
data modify storage luigis_mansion:data entity.owner set from entity @s UUID
function luigis_mansion:spawn_entities/vacuumable_object/wind