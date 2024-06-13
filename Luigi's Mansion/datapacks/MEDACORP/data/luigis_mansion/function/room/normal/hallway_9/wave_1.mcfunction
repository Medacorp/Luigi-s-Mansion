data modify storage luigis_mansion:data entity set value {room:35,no_hidden_move:1b}
execute if predicate luigis_mansion:hallway_ghost_chance positioned 682 23 -2 run function luigis_mansion:spawn_entities/ghost/ceiling_surprise
data modify storage luigis_mansion:data entity set value {room:35,no_hidden_move:1b}
execute if predicate luigis_mansion:hallway_ghost_chance positioned 682 23 -6 run function luigis_mansion:spawn_entities/ghost/purple_bomber
data modify storage luigis_mansion:data entity set value {room:35,no_hidden_move:1b}
execute if predicate luigis_mansion:hallway_ghost_chance positioned 682 20 -8 run function luigis_mansion:spawn_entities/ghost/bowling_ghost
data modify storage luigis_mansion:data entity set value {room:35,no_hidden_move:1b}
execute if predicate luigis_mansion:hallway_ghost_chance positioned 682 23 -10 run function luigis_mansion:spawn_entities/ghost/ceiling_surprise
data remove storage luigis_mansion:data entity
scoreboard players set #hallway_9 Wave 1