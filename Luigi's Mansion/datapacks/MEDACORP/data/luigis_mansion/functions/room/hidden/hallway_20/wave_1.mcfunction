data modify storage luigis_mansion:data entity set value {room:59}
execute if predicate luigis_mansion:hallway_ghost_chance positioned 720 5 33 run function luigis_mansion:spawn_entities/ghost/purple_bomber
data modify storage luigis_mansion:data entity set value {room:59}
execute if predicate luigis_mansion:hallway_ghost_chance positioned 724 5 33 run function luigis_mansion:spawn_entities/ghost/purple_bomber
data modify storage luigis_mansion:data entity set value {room:59}
execute if predicate luigis_mansion:hallway_ghost_chance positioned 728 5 33 run function luigis_mansion:spawn_entities/ghost/purple_bomber
data remove storage luigis_mansion:data entity
scoreboard players set #hallway_20 Wave 1