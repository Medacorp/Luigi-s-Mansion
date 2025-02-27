data modify storage luigis_mansion:data entity set value {room:38,spawn:2b,no_hidden_move:1b}
execute if predicate luigis_mansion:hallway/blackout_ghost_chance positioned 701 23 -19 run function luigis_mansion:spawn_entities/ghost/purple_bomber
data modify storage luigis_mansion:data entity set value {room:38,spawn:2b,no_hidden_move:1b}
execute if predicate luigis_mansion:hallway/blackout_ghost_chance positioned 703 20 -19 run function luigis_mansion:spawn_entities/ghost/bowling_ghost
data modify storage luigis_mansion:data entity set value {room:38,spawn:2b,no_hidden_move:1b}
execute if predicate luigis_mansion:hallway/blackout_ghost_chance positioned 705 23 -19 run function luigis_mansion:spawn_entities/ghost/ceiling_surprise
data remove storage luigis_mansion:data entity
scoreboard players set #hallway_12 Wave 100