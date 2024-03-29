data modify storage luigis_mansion:data entity set value {room:5}
execute positioned 680 20 66 run function luigis_mansion:spawn_entities/ghost/gold_ghost
data modify storage luigis_mansion:data entity set value {room:5,tags:["hiding_in_furniture"]}
execute positioned 679 20 73 run function luigis_mansion:spawn_entities/ghost/gold_ghost
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["wardrobe_room_speedy_spirit"]} run data modify storage luigis_mansion:data entity set value {room:5,loot:{name:"wardrobe_room_speedy_spirit"},tags:["hiding_in_furniture"]}
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["wardrobe_room_speedy_spirit"]} run function luigis_mansion:entities/speedy_spirit/give_money/bills
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["wardrobe_room_speedy_spirit"]} positioned 679 20 58 run function luigis_mansion:spawn_entities/ghost/speedy_spirit
scoreboard players set #wardrobe_room Wave 1