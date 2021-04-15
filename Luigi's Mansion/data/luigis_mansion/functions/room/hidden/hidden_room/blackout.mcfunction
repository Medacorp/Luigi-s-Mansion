execute positioned 711 102 -15 run function luigis_mansion:spawn_entities/new_ghost/blue_twirler
execute positioned 714 102 -12.0 run function luigis_mansion:spawn_entities/new_ghost/grabbing_ghost
execute positioned 711 102 -10 run function luigis_mansion:spawn_entities/new_ghost/blue_twirler
execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{hidden_room_speedy_spirit:1b} positioned 713 102 -6 run function luigis_mansion:spawn_entities/new_ghost/speedy_spirit
scoreboard players set #hidden_room Wave 100