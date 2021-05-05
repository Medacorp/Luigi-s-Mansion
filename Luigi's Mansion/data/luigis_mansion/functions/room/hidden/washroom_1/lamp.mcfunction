execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{washroom_1_lamp:1b} positioned 665 16 -26 run function luigis_mansion:spawn_entities/item/gold_coin
execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{washroom_1_lamp:1b} positioned 663 16 -26 run function luigis_mansion:spawn_entities/item/gold_coin
execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{washroom_1_lamp:1b} positioned 664 16 -27 run function luigis_mansion:spawn_entities/item/gold_coin
execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{washroom_1_lamp:1b} positioned 664 16 -25 run function luigis_mansion:spawn_entities/item/gold_coin
execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{washroom_1_lamp:1b} positioned 664 15 -26 run function luigis_mansion:spawn_entities/item/gold_coin
execute if data storage luigis_mansion:data current_state.current_data.money_spawned{washroom_1_lamp:1b} run tag @e[tag=selected] add nothing
data modify storage luigis_mansion:data current_state.current_data.money_spawned merge value {washroom_1_lamp:1b}