data modify storage luigis_mansion:data entity set value {room:38,no_hidden_move:1b}
execute if predicate luigis_mansion:hallway/ghost_chance positioned 708 20 -20 run function luigis_mansion:spawn_entities/ghost/bowling_ghost
data modify storage luigis_mansion:data entity set value {room:38,no_hidden_move:1b}
execute if predicate luigis_mansion:hallway/ghost_chance positioned 708 20 -18 run function luigis_mansion:spawn_entities/ghost/bowling_ghost
data remove storage luigis_mansion:data entity
scoreboard players set #hallway_12 Wave 1