data modify storage luigis_mansion:data entity set value {room:14,no_hidden_move:1b}
execute if predicate luigis_mansion:hallway/ghost_chance positioned 673 11 8 run function luigis_mansion:spawn_entities/ghost/bowling_ghost
data remove storage luigis_mansion:data entity
scoreboard players set #hallway_6 Wave 1