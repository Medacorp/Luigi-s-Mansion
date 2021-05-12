execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{sealed_room_chest_8:1b} positioned 697 23 100 run function luigis_mansion:spawn_entities/item/gold_coin
execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{sealed_room_chest_8:1b} positioned 697 23 99 run function luigis_mansion:spawn_entities/item/gold_coin
execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{sealed_room_chest_8:1b} positioned 698 23 99 run function luigis_mansion:spawn_entities/item/gold_coin
execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{sealed_room_chest_8:1b} positioned 699 23 99 run function luigis_mansion:spawn_entities/item/gold_coin
execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{sealed_room_chest_8:1b} positioned 699 23 100 run function luigis_mansion:spawn_entities/item/gold_coin
execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{sealed_room_chest_8:1b} positioned 697 23 100 run function luigis_mansion:spawn_entities/item/bill
execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{sealed_room_chest_8:1b} positioned 697 23 99 run function luigis_mansion:spawn_entities/item/bill
execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{sealed_room_chest_8:1b} positioned 698 23 99 run function luigis_mansion:spawn_entities/item/bill
execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{sealed_room_chest_8:1b} positioned 699 23 99 run function luigis_mansion:spawn_entities/item/bill
execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{sealed_room_chest_8:1b} positioned 699 23 100 run function luigis_mansion:spawn_entities/item/bill
execute if data storage luigis_mansion:data current_state.current_data.money_spawned{sealed_room_chest_8:1b} run tag @e[tag=selected] add nothing
data modify storage luigis_mansion:data current_state.current_data.money_spawned merge value {sealed_room_chest_8:1b}