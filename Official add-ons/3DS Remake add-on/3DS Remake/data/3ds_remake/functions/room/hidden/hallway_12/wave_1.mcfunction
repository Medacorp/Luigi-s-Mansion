data modify storage luigis_mansion:data entity set value {room:38}
execute if predicate luigis_mansion:hallway_ghost_chance positioned 708 20 -20 run function luigis_mansion:spawn_entities/ghost/bowling_ghost
data modify storage luigis_mansion:data entity set value {room:38}
execute if predicate luigis_mansion:hallway_ghost_chance positioned 708 20 -18 run function luigis_mansion:spawn_entities/ghost/bowling_ghost
data remove storage luigis_mansion:data entity
scoreboard players set #hallway_12 Wave 1