data modify storage luigis_mansion:data entity set value {room:54,no_hidden_move:1b}
execute if predicate luigis_mansion:hallway/ghost_chance positioned 729 29 -29 run function luigis_mansion:spawn_entities/ghost/bowling_ghost
data modify storage luigis_mansion:data entity set value {room:54,no_hidden_move:1b}
execute if predicate luigis_mansion:hallway/ghost_chance positioned 737 32 -29 run function luigis_mansion:spawn_entities/ghost/purple_bomber
data remove storage luigis_mansion:data entity
scoreboard players set #hallway_18 Wave 1