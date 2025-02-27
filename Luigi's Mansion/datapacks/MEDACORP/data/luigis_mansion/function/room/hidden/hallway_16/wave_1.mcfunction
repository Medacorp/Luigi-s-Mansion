data modify storage luigis_mansion:data entity set value {room:51,no_hidden_move:1b}
execute if predicate luigis_mansion:hallway/ghost_chance positioned 745 32 28 run function luigis_mansion:spawn_entities/ghost/purple_bomber
data remove storage luigis_mansion:data entity
scoreboard players set #hallway_16 Wave 1