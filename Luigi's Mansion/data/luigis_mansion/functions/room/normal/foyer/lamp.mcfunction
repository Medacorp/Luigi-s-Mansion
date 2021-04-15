execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{foyer_lamp:1b} positioned 745.5 17 10.5 run function luigis_mansion:spawn_entities/item/gold_coin
execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{foyer_lamp:1b} positioned 745.5 17 7.5 run function luigis_mansion:spawn_entities/item/gold_coin
execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{foyer_lamp:1b} positioned 746.5 17 9.5 run function luigis_mansion:spawn_entities/item/gold_coin
execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{foyer_lamp:1b} positioned 746.5 17 8.5 run function luigis_mansion:spawn_entities/item/gold_coin
execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{foyer_lamp:1b} positioned 745.5 16 9.0 run function luigis_mansion:spawn_entities/item/gold_coin
execute if data storage luigis_mansion:data current_state.current_data.money_spawned{foyer_lamp:1b} run tag @e[tag=selected] add nothing
data modify storage luigis_mansion:data current_state.current_data.money_spawned merge value {foyer_lamp:1b}