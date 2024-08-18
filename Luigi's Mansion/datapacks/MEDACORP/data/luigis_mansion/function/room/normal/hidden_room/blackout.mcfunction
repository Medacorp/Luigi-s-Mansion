data modify storage luigis_mansion:data entity set value {room:24,spawn:2b}
execute positioned 742 11 42 run function luigis_mansion:spawn_entities/ghost/blue_twirler
data modify storage luigis_mansion:data entity set value {room:24,spawn:2b}
execute positioned 745 11 40.0 run function luigis_mansion:spawn_entities/ghost/grabbing_ghost
data modify storage luigis_mansion:data entity set value {room:24,spawn:2b}
execute positioned 742 11 37 run function luigis_mansion:spawn_entities/ghost/blue_twirler
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["hidden_room_speedy_spirit"]} run data modify storage luigis_mansion:data entity set value {room:24,loot:{drop_at_0:{name:"hidden_room_speedy_spirit"}},spawn:3b}
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["hidden_room_speedy_spirit"]} run function luigis_mansion:entities/speedy_spirit/give_money/green_emerald
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["hidden_room_speedy_spirit"]} positioned 744.0 11 33 run function luigis_mansion:spawn_entities/ghost/speedy_spirit
scoreboard players set #hidden_room Wave 100