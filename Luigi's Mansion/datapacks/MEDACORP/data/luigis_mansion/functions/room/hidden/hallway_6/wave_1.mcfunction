data modify storage luigis_mansion:data entity set value {room:14}
execute if predicate luigis_mansion:hallway_ghost_chance positioned 671 11 7 run function luigis_mansion:spawn_entities/ghost/bowling_ghost
data remove storage luigis_mansion:data entity
scoreboard players set #hallway_6 Wave 1