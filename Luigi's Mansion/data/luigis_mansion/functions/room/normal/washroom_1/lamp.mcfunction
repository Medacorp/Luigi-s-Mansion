execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{washroom_1_lamp:1b} positioned 665 16 41 run function luigis_mansion:spawn_entities/item/gold_coin
execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{washroom_1_lamp:1b} positioned 663 16 41 run function luigis_mansion:spawn_entities/item/gold_coin
execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{washroom_1_lamp:1b} positioned 664 16 42 run function luigis_mansion:spawn_entities/item/gold_coin
execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{washroom_1_lamp:1b} positioned 664 16 40 run function luigis_mansion:spawn_entities/item/gold_coin
execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{washroom_1_lamp:1b} positioned 664 15 41 run function luigis_mansion:spawn_entities/item/gold_coin
execute if data storage luigis_mansion:data current_state.current_data.money_spawned{washroom_1_lamp:1b} run tag @e[tag=selected] add nothing
data modify storage luigis_mansion:data current_state.current_data.money_spawned merge value {washroom_1_lamp:1b}