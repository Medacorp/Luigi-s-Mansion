data modify storage luigis_mansion:data entity set value {damage:{},room:0}
data modify storage luigis_mansion:data entity.damage set from entity @s data.damage
data modify storage luigis_mansion:data entity.owner set from entity @s data.owner
execute store result storage luigis_mansion:data macro.id int 1 run scoreboard players get @s IceSpikesNr
function luigis_mansion:spawn_entities/ice_spikes with storage luigis_mansion:data macro