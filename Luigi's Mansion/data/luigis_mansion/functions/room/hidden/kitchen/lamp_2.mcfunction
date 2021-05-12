execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{kitchen_lamp_2:1b} positioned 703 16 -64 run function luigis_mansion:spawn_entities/item/gold_coin
execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{kitchen_lamp_2:1b} positioned 701 16 -64 run function luigis_mansion:spawn_entities/item/gold_coin
execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{kitchen_lamp_2:1b} positioned 702 16 -65 run function luigis_mansion:spawn_entities/item/gold_coin
execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{kitchen_lamp_2:1b} positioned 702 16 -63 run function luigis_mansion:spawn_entities/item/gold_coin
execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{kitchen_lamp_2:1b} positioned 702 15 -64 run function luigis_mansion:spawn_entities/item/gold_coin
execute if data storage luigis_mansion:data current_state.current_data.money_spawned{kitchen_lamp_2:1b} run tag @e[tag=selected] add nothing
data modify storage luigis_mansion:data current_state.current_data.money_spawned merge value {kitchen_lamp_2:1b}