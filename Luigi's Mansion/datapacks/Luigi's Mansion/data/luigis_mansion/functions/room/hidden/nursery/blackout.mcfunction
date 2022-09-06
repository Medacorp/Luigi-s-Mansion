execute positioned 741 20 -42 run function luigis_mansion:spawn_entities/ghost/can_spawn_now/blue_twirler
execute positioned 740 20 -46 run function luigis_mansion:spawn_entities/ghost/can_spawn_now/gold_ghost
execute positioned 747 20 -48 run function luigis_mansion:spawn_entities/ghost/can_spawn_now/gold_ghost
execute positioned 744 20 -53 run function luigis_mansion:spawn_entities/ghost/can_spawn_now/purple_puncher
execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{nursery_speedy_spirit:1b} positioned 741 20 -52 run function luigis_mansion:spawn_entities/ghost/can_spawn_now/speedy_spirit
scoreboard players set #nursery Wave 100