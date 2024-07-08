data modify storage luigis_mansion:data entity set value {damage:{}}
data modify storage luigis_mansion:data entity.damage set from entity @s data.damage
data modify storage luigis_mansion:data entity.owner set from entity @s UUID
execute positioned ^ ^-0.3 ^1 run function luigis_mansion:spawn_entities/ice_spikes_spawner