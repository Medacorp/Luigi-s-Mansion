data modify storage luigis_mansion:data entity set value {room:45}
execute positioned 664 20 -82 run function luigis_mansion:spawn_entities/ghost/grabbing_ghost
data modify storage luigis_mansion:data entity set value {room:45}
execute positioned 669 20 -78 run function luigis_mansion:spawn_entities/ghost/ghost_guy/red
data modify storage luigis_mansion:data entity set value {room:45,attack_type:"spin"}
execute positioned 669 20 -86 run function luigis_mansion:spawn_entities/ghost/ghost_guy/green
scoreboard players set #astral_hall Wave 4