data modify storage luigis_mansion:data entity set value {spawn:2b}
execute if predicate luigis_mansion:50_50 positioned 682 23 -2 run function luigis_mansion:spawn_entities/ghost/purple_bomber
data modify storage luigis_mansion:data entity set value {spawn:2b}
execute if predicate luigis_mansion:50_50 positioned 682 20 -8 run function luigis_mansion:spawn_entities/ghost/bowling_ghost
data modify storage luigis_mansion:data entity set value {spawn:2b}
execute if predicate luigis_mansion:50_50 positioned 682 23 -6 run function luigis_mansion:spawn_entities/ghost/purple_bomber
data remove storage luigis_mansion:data entity
scoreboard players set #hallway_9 Wave 100