data modify storage luigis_mansion:data entity set value {room:37,spawn:2b,no_hidden_move:1b}
execute if predicate luigis_mansion:hallway/blackout_ghost_chance positioned 691 23 34 run function luigis_mansion:spawn_entities/ghost/purple_bomber
data remove storage luigis_mansion:data entity
scoreboard players set #hallway_11 Wave 100