data modify storage luigis_mansion:data entity set value {room:11,spawn:2b,no_hidden_move:1b}
execute if predicate luigis_mansion:hallway/blackout_ghost_chance positioned 716 14 10 run function luigis_mansion:spawn_entities/ghost/ceiling_surprise
data modify storage luigis_mansion:data entity set value {room:11,spawn:2b,no_hidden_move:1b}
execute if predicate luigis_mansion:hallway/blackout_ghost_chance positioned 716 14 7 run function luigis_mansion:spawn_entities/ghost/purple_bomber
data modify storage luigis_mansion:data entity set value {room:11,spawn:2b,no_hidden_move:1b}
execute positioned 716 14 -6 run function luigis_mansion:spawn_entities/ghost/purple_bomber
scoreboard players set #hallway_3 Wave 100