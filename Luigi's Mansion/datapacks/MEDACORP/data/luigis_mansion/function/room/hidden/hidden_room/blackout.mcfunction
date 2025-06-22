data modify storage luigis_mansion:data entity set value {room:24,spawn:2b}
execute positioned 742 11 -27 run function luigis_mansion:spawn_entities/ghost/blue_twirler
data modify storage luigis_mansion:data entity set value {room:24,spawn:2b}
execute positioned 745 11 -24.0 run function luigis_mansion:spawn_entities/ghost/grabbing_ghost
data modify storage luigis_mansion:data entity set value {room:24,spawn:2b}
execute positioned 742 11 -22 run function luigis_mansion:spawn_entities/ghost/blue_twirler
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["hidden_room_speedy_spirit"]} run data modify storage luigis_mansion:data entity set value {room:24,no_hidden_move:1b,disappear_on_vanish:"hidden_room_speedy_spirit",loot:{drop_at_0:{name:"hidden_room_speedy_spirit"}},spawn:3b}
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["hidden_room_speedy_spirit"]} run function luigis_mansion:entities/speedy_spirit/give_money/silver_diamond
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["hidden_room_speedy_spirit"]} positioned 744.0 11 -18 run function luigis_mansion:spawn_entities/ghost/speedy_spirit
scoreboard players set #hidden_room Wave 100