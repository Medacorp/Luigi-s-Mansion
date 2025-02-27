data modify storage luigis_mansion:data entity set value {room:11,no_hidden_move:1b}
execute if predicate luigis_mansion:hallway/ghost_chance positioned 716 14 13 run function luigis_mansion:spawn_entities/ghost/ceiling_surprise
data modify storage luigis_mansion:data entity set value {room:11,no_hidden_move:1b}
execute if predicate luigis_mansion:hallway/ghost_chance positioned 716 14 7 run function luigis_mansion:spawn_entities/ghost/ceiling_surprise
data modify storage luigis_mansion:data entity set value {room:11,no_hidden_move:1b}
execute if predicate luigis_mansion:hallway/ghost_chance positioned 716 14 -30 run function luigis_mansion:spawn_entities/ghost/ceiling_surprise
data remove storage luigis_mansion:data entity
scoreboard players set #hallway_3 Wave 1