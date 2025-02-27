data modify storage luigis_mansion:data entity set value {room:52,no_hidden_move:1b}
execute if predicate luigis_mansion:hallway/ghost_chance positioned 730 32 -13 run function luigis_mansion:spawn_entities/ghost/purple_bomber
data remove storage luigis_mansion:data entity
scoreboard players set #hallway_17 Wave 1