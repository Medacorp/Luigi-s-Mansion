data modify storage luigis_mansion:data entity set value {room:36,spawn:2b,no_hidden_move:1b}
execute if predicate luigis_mansion:50_50 positioned 673 23 7 run function luigis_mansion:spawn_entities/ghost/purple_bomber
data remove storage luigis_mansion:data entity
scoreboard players set #hallway_10 Wave 100