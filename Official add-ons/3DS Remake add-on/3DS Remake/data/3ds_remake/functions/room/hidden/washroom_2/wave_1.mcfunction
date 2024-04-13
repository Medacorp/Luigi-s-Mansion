data modify storage luigis_mansion:data entity set value {room:42,spawn:3b}
execute positioned 664 20 44 run function luigis_mansion:spawn_entities/ghost/empty_marker
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["washroom_2_speedy_spirit"]} run data modify storage luigis_mansion:data entity set value {room:42,loot:{name:"washroom_2_speedy_spirit"},spawn:3b}
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["washroom_2_speedy_spirit"]} run function luigis_mansion:entities/speedy_spirit/give_money/bills
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["washroom_2_speedy_spirit"]} positioned 662 20 37 run function luigis_mansion:spawn_entities/ghost/speedy_spirit
scoreboard players set #washroom_2 Wave 1