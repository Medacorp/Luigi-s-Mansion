data modify storage luigis_mansion:data entity set value {room:38,spawn:2b,no_hidden_move:1b}
execute if predicate luigis_mansion:50_50 positioned 701 23 34 run function luigis_mansion:spawn_entities/ghost/purple_bomber
data modify storage luigis_mansion:data entity set value {room:38,spawn:2b,no_hidden_move:1b}
execute if predicate luigis_mansion:50_50 positioned 703 20 34 run function luigis_mansion:spawn_entities/ghost/bowling_ghost
data modify storage luigis_mansion:data entity set value {room:38,spawn:2b,no_hidden_move:1b}
execute if predicate luigis_mansion:50_50 positioned 705 23 34 run function luigis_mansion:spawn_entities/ghost/ceiling_surprise
data remove storage luigis_mansion:data entity
scoreboard players set #hallway_12 Wave 100