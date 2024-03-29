data modify storage luigis_mansion:data entity set value {room:24,attack_type:"spin",tags:["hiding_in_furniture"]}
execute positioned 744.0 11 -31 run function luigis_mansion:spawn_entities/ghost/ghost_guy/green
data modify storage luigis_mansion:data entity set value {room:24,tags:["hiding_in_furniture"]}
execute positioned 739 13 -29.0 run function luigis_mansion:spawn_entities/ghost/ghost_guy/red
data modify storage luigis_mansion:data entity set value {room:24,attack_type:"spin",tags:["hiding_in_furniture"]}
execute positioned 740 11 -24.0 run function luigis_mansion:spawn_entities/ghost/ghost_guy/green
data modify storage luigis_mansion:data entity set value {room:24,tags:["hiding_in_furniture"]}
execute positioned 746 11 -21.0 run function luigis_mansion:spawn_entities/ghost/ghost_guy/red
scoreboard players set #hidden_room Wave 1