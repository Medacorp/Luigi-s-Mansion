summon minecraft:area_effect_cloud 708 93 49 {Duration:1000000,Tags:["ghost_marker","ghost"],Rotation:[0.0f,90.0f]}
summon minecraft:area_effect_cloud 714 93 41 {Duration:1000000,Tags:["ghost_marker","ghost"],Rotation:[0.0f,90.0f]}
execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{cellar_speedy_spirit:1b} positioned 709 94 39 run function luigis_mansion:spawn_entities/new_ghost/speedy_spirit
scoreboard players set #cellar Wave 1