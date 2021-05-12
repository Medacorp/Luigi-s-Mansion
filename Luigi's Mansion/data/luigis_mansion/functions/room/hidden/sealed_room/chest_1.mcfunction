execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{sealed_room_chest_1:1b} positioned 697 22 74 run function luigis_mansion:spawn_entities/item/gold_coin
execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{sealed_room_chest_1:1b} positioned 697 22 73 run function luigis_mansion:spawn_entities/item/gold_coin
execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{sealed_room_chest_1:1b} positioned 698 22 74 run function luigis_mansion:spawn_entities/item/gold_coin
execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{sealed_room_chest_1:1b} positioned 699 22 74 run function luigis_mansion:spawn_entities/item/gold_coin
execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{sealed_room_chest_1:1b} positioned 699 22 73 run function luigis_mansion:spawn_entities/item/gold_coin
execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{sealed_room_chest_1:1b} positioned 697 22 74 run function luigis_mansion:spawn_entities/item/bill
execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{sealed_room_chest_1:1b} positioned 697 22 73 run function luigis_mansion:spawn_entities/item/bill
execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{sealed_room_chest_1:1b} positioned 698 22 74 run function luigis_mansion:spawn_entities/item/bill
execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{sealed_room_chest_1:1b} positioned 699 22 74 run function luigis_mansion:spawn_entities/item/bill
execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{sealed_room_chest_1:1b} positioned 699 22 73 run function luigis_mansion:spawn_entities/item/bill
execute if data storage luigis_mansion:data current_state.current_data.money_spawned{sealed_room_chest_1:1b} run tag @e[tag=selected] add nothing
data modify storage luigis_mansion:data current_state.current_data.money_spawned merge value {sealed_room_chest_1:1b}