execute positioned 742 11 42 run function luigis_mansion:spawn_entities/ghost/can_spawn_now/blue_twirler
execute positioned 745 11 40.0 run function luigis_mansion:spawn_entities/ghost/can_spawn_now/grabbing_ghost
execute positioned 742 11 37 run function luigis_mansion:spawn_entities/ghost/can_spawn_now/blue_twirler
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["hidden_room_speedy_spirit"]} run function luigis_mansion:entities/speedy_spirit/give_money/green_emerald
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["hidden_room_speedy_spirit"]} run data modify storage luigis_mansion:data entity.loot.name set value "hidden_room_speedy_spirit"
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["hidden_room_speedy_spirit"]} positioned 744.0 9.6 33 run function luigis_mansion:spawn_entities/ghost/can_spawn_now/speedy_spirit
scoreboard players set #hidden_room Wave 100