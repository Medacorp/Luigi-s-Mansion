data modify storage luigis_mansion:data entity set value {room:66,spawn:3b}
execute positioned 696.0 21 93.0 run function luigis_mansion:spawn_entities/ghost/empty_marker
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["sealed_room_speedy_spirit"]} run data modify storage luigis_mansion:data entity set value {room:66,loot:{name:"sealed_room_speedy_spirit"},spawn:3b}
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["sealed_room_speedy_spirit"]} run function luigis_mansion:entities/speedy_spirit/give_money/silver_diamond
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["sealed_room_speedy_spirit"]} positioned 708.0 20 95 run function luigis_mansion:spawn_entities/ghost/speedy_spirit
scoreboard players set #sealed_room Wave 1