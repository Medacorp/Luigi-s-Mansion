data modify storage luigis_mansion:data entity set value {room:59,no_hidden_move:1b}
execute if predicate luigis_mansion:hallway/ghost_chance positioned 720 5 -18 run function luigis_mansion:spawn_entities/ghost/ceiling_surprise
data modify storage luigis_mansion:data entity set value {room:59,no_hidden_move:1b}
execute if predicate luigis_mansion:hallway/ghost_chance positioned 717 5 -18 run function luigis_mansion:spawn_entities/ghost/purple_bomber
data remove storage luigis_mansion:data entity
scoreboard players set #hallway_20 Wave 1