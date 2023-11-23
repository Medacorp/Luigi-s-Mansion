data modify storage luigis_mansion:data entity set value {spawn:2b}
execute if predicate luigis_mansion:50_50 positioned 726 23 52 run function luigis_mansion:spawn_entities/ghost/purple_bomber
data modify storage luigis_mansion:data entity set value {spawn:2b}
execute if predicate luigis_mansion:50_50 positioned 726 23 61 run function luigis_mansion:spawn_entities/ghost/ceiling_surprise
data modify storage luigis_mansion:data entity set value {spawn:2b}
execute if predicate luigis_mansion:50_50 positioned 726 23 70 run function luigis_mansion:spawn_entities/ghost/purple_bomber
data remove storage luigis_mansion:data entity
scoreboard players set #hallway_2 Wave 100