data modify storage luigis_mansion:data entity set value {room:18}
execute positioned 684 11 -64 run function luigis_mansion:spawn_entities/ghost/purple_puncher
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["storage_room_speedy_spirit"]} run data modify storage luigis_mansion:data entity set value {room:18,no_hidden_move:1b,disappear_on_vanish:"storage_room_speedy_spirit",loot:{drop_at_0:{name:"storage_room_speedy_spirit"}},spawn:3b}
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["storage_room_speedy_spirit"]} run function luigis_mansion:entities/speedy_spirit/give_money/gold_bars
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["storage_room_speedy_spirit"]} positioned 687 11 -68 run function luigis_mansion:spawn_entities/ghost/speedy_spirit
scoreboard players set #storage_room Wave 1