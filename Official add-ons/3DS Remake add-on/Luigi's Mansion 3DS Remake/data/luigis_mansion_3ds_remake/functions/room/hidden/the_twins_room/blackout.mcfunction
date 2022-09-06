execute positioned 741 20 44 run function luigis_mansion:spawn_entities/ghost/can_spawn_now/ghost_guy/red
execute positioned 741 20 39 run function luigis_mansion:spawn_entities/ghost/can_spawn_now/grabbing_ghost
execute positioned 746 20 38 run function luigis_mansion:spawn_entities/ghost/can_spawn_now/ghost_guy/red
execute positioned 746 20 43 run function luigis_mansion:spawn_entities/ghost/can_spawn_now/grabbing_ghost
execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{the_twins_room_speedy_spirit:1b} positioned 739 22 34 run function luigis_mansion:spawn_entities/ghost/can_spawn_now/speedy_spirit
scoreboard players set #the_twins_room Wave 100