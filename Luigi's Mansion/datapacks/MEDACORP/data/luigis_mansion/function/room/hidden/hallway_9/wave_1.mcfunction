data modify storage luigis_mansion:data entity set value {room:35,no_hidden_move:1b}
execute if predicate luigis_mansion:hallway/ghost_chance positioned 682 23 15 run function luigis_mansion:spawn_entities/ghost/purple_bomber
data modify storage luigis_mansion:data entity set value {room:35,no_hidden_move:1b}
execute if predicate luigis_mansion:hallway/ghost_chance positioned 682 23 25 run function luigis_mansion:spawn_entities/ghost/purple_bomber
data modify storage luigis_mansion:data entity set value {room:35,no_hidden_move:1b}
execute positioned 682 23 20 run function luigis_mansion:spawn_entities/ghost/ceiling_surprise
scoreboard players set #hallway_9 Wave 1