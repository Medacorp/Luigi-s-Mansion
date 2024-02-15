data modify storage luigis_mansion:data entity set value {damage:{}}
data modify storage luigis_mansion:data entity.damage set from entity @s data.damage
execute store result storage luigis_mansion:data entity.owner run scoreboard players get @s GhostNr
execute positioned ^ ^-0.6 ^1 run function luigis_mansion:spawn_entities/ice_spikes_spawner