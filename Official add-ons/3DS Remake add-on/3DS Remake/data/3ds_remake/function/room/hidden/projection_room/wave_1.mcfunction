data modify storage luigis_mansion:data entity set value {room:48,spawn:3b}
execute positioned 685 12 38 run function luigis_mansion:spawn_entities/ghost/empty_marker
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["projection_room_speedy_spirit"]} run data modify storage luigis_mansion:data entity set value {room:48,no_hidden_move:1b,disappear_on_vanish:"projection_room_speedy_spirit",loot:{drop_at_0:{name:"projection_room_speedy_spirit"}},spawn:3b}
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["projection_room_speedy_spirit"]} run function luigis_mansion:entities/speedy_spirit/give_money/blue_sapphire
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["projection_room_speedy_spirit"]} positioned 676 11 33 run function luigis_mansion:spawn_entities/ghost/speedy_spirit
scoreboard players set #projection_room Wave 1