data modify storage luigis_mansion:data entity set value {room:34,spawn:2b}
execute positioned 640 20 -45.0 run function luigis_mansion:spawn_entities/ghost/blue_blaze
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["tea_room_speedy_spirit"]} run data modify storage luigis_mansion:data entity set value {room:34,no_hidden_move:1b,disappear_on_vanish:"tea_room_speedy_spirit",loot:{drop_at_0:{name:"tea_room_speedy_spirit"}},spawn:3b}
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["tea_room_speedy_spirit"]} run function luigis_mansion:entities/speedy_spirit/give_money/bills
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["tea_room_speedy_spirit"]} positioned 641 20 -37 run function luigis_mansion:spawn_entities/ghost/speedy_spirit
scoreboard players set #tea_room Wave 100