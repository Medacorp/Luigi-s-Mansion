data modify storage luigis_mansion:data entity set value {room:13,no_hidden_move:1b}
execute if predicate luigis_mansion:hallway_ghost_chance positioned 682 14 25 run function luigis_mansion:spawn_entities/ghost/purple_bomber
data modify storage luigis_mansion:data entity set value {room:13,no_hidden_move:1b}
execute positioned 682 14 17 run function luigis_mansion:spawn_entities/ghost/purple_bomber
scoreboard players set #hallway_5 Wave 1