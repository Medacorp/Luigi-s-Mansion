data modify storage luigis_mansion:data entity set value {room:12,no_hidden_move:1b}
execute if predicate luigis_mansion:hallway/ghost_chance positioned 701 14 -19 run function luigis_mansion:spawn_entities/ghost/purple_bomber
data modify storage luigis_mansion:data entity set value {room:12,no_hidden_move:1b}
execute if predicate luigis_mansion:hallway/ghost_chance positioned 699 11 -19 run function luigis_mansion:spawn_entities/ghost/bowling_ghost
data remove storage luigis_mansion:data entity
scoreboard players set #hallway_4 Wave 1