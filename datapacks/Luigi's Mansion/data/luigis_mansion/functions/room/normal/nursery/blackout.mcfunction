execute positioned 741 20 57 run function luigis_mansion:spawn_entities/ghost/can_spawn_now/blue_twirler
execute positioned 740 20 61 run function luigis_mansion:spawn_entities/ghost/can_spawn_now/gold_ghost
execute positioned 747 20 63 run function luigis_mansion:spawn_entities/ghost/can_spawn_now/gold_ghost
execute positioned 744 20 68 run function luigis_mansion:spawn_entities/ghost/can_spawn_now/purple_puncher
execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{nursery_speedy_spirit:1b} positioned 741 20 67 run function luigis_mansion:spawn_entities/ghost/can_spawn_now/speedy_spirit
scoreboard players set #nursery Wave 100