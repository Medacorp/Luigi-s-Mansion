data modify storage luigis_mansion:data entity set value {room:13,no_hidden_move:1b}
execute if predicate luigis_mansion:hallway/ghost_chance positioned 682 14 -5 run function luigis_mansion:spawn_entities/ghost/ceiling_surprise
data remove storage luigis_mansion:data entity
scoreboard players set #hallway_5 Wave 1