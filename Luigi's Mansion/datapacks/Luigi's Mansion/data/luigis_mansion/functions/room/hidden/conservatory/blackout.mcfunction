execute positioned 658 11 21 run function luigis_mansion:spawn_entities/ghost/can_spawn_now/gold_ghost
execute positioned 655 11 26 run function luigis_mansion:spawn_entities/ghost/can_spawn_now/purple_puncher
execute positioned 658 11 30 run function luigis_mansion:spawn_entities/ghost/can_spawn_now/gold_ghost
execute positioned 661 11 36 run function luigis_mansion:spawn_entities/ghost/can_spawn_now/gold_ghost
execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{conservatory_speedy_spirit:1b} positioned 660 11 39 run function luigis_mansion:spawn_entities/ghost/can_spawn_now/speedy_spirit
scoreboard players set #conservatory Wave 100