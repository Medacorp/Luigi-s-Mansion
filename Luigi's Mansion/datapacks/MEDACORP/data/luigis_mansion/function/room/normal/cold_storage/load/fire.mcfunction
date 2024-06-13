setblock 738 2 -1 minecraft:soul_campfire[lit=true]
data modify storage luigis_mansion:data entity set value {room:68}
execute positioned 738 2.5 -1 run function luigis_mansion:spawn_entities/ghost/fire_elemental_source