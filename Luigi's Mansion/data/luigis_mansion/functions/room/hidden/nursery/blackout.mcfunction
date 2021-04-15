execute positioned 709 111 -26 run function luigis_mansion:spawn_entities/new_ghost/blue_twirler
execute positioned 708 111 -30 run function luigis_mansion:spawn_entities/new_ghost/gold_ghost
execute positioned 715 111 -32 run function luigis_mansion:spawn_entities/new_ghost/gold_ghost
execute positioned 712 111 -37 run function luigis_mansion:spawn_entities/new_ghost/purple_puncher
execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{nursery_speedy_spirit:1b} positioned 709 111 -36 run function luigis_mansion:spawn_entities/new_ghost/speedy_spirit
scoreboard players set #nursery Wave 100