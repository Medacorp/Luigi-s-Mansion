execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{anteroom_table_2:1b} positioned 685 21 -16 run function luigis_mansion:spawn_entities/item/gold_coin
execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{anteroom_table_2:1b} positioned 686 21 -17 run function luigis_mansion:spawn_entities/item/gold_coin
execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{anteroom_table_2:1b} positioned 686 21 -18 run function luigis_mansion:spawn_entities/item/gold_coin
execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{anteroom_table_2:1b} positioned 685 21 -19 run function luigis_mansion:spawn_entities/item/gold_coin
execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{anteroom_table_2:1b} positioned 685 22 -17.0 run function luigis_mansion:spawn_entities/item/gold_coin
execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{anteroom_table_2:1b} positioned 685 21 -16 run function luigis_mansion:spawn_entities/item/bill
execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{anteroom_table_2:1b} positioned 686 21 -17 run function luigis_mansion:spawn_entities/item/bill
execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{anteroom_table_2:1b} positioned 686 21 -18 run function luigis_mansion:spawn_entities/item/bill
execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{anteroom_table_2:1b} positioned 685 21 -19 run function luigis_mansion:spawn_entities/item/bill
execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{anteroom_table_2:1b} positioned 685 22 -17.0 run function luigis_mansion:spawn_entities/item/bill
execute if data storage luigis_mansion:data current_state.current_data.money_spawned{anteroom_table_2:1b} run tag @e[tag=selected] add nothing
data modify storage luigis_mansion:data current_state.current_data.money_spawned merge value {anteroom_table_2:1b}