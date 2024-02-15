data modify storage luigis_mansion:data entity set value {damage:{},room:0}
data modify storage luigis_mansion:data entity.damage set from entity @s data.damage
execute store result storage luigis_mansion:data entity.owner int 1 run scoreboard players get @s Owner
execute store result storage luigis_mansion:data entity.room int 1 run scoreboard players get @s Room
execute store result storage luigis_mansion:data macro.id int 1 run scoreboard players get @s IceSpikesNr
function luigis_mansion:spawn_entities/ice_spikes