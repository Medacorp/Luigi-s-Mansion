data modify storage luigis_mansion:data entity set value {room:18}
execute positioned 688 11 81 run function luigis_mansion:spawn_entities/ghost/gold_ghost
data modify storage luigis_mansion:data entity set value {room:18}
execute positioned 688 11 69 run function luigis_mansion:spawn_entities/ghost/gold_ghost
data modify storage luigis_mansion:data entity set value {room:18}
execute positioned 683 11 75 run function luigis_mansion:spawn_entities/ghost/garbage_can_ghost
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["storage_room_speedy_spirit"]} run data modify storage luigis_mansion:data entity set value {room:18,loot:{drop_at_0:{name:"storage_room_speedy_spirit"}},spawn:3b}
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["storage_room_speedy_spirit"]} run function luigis_mansion:entities/speedy_spirit/give_money/silver_diamond
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["storage_room_speedy_spirit"]} positioned 687 11 83 run function luigis_mansion:spawn_entities/ghost/speedy_spirit
scoreboard players set #storage_room Wave 1