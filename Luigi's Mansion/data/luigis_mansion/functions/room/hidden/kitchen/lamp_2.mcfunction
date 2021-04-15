execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{kitchen_lamp_2:1b} positioned 691 107 -29 run function luigis_mansion:spawn_entities/item/gold_coin
execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{kitchen_lamp_2:1b} positioned 689 107 -29 run function luigis_mansion:spawn_entities/item/gold_coin
execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{kitchen_lamp_2:1b} positioned 690 107 -30 run function luigis_mansion:spawn_entities/item/gold_coin
execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{kitchen_lamp_2:1b} positioned 690 107 -28 run function luigis_mansion:spawn_entities/item/gold_coin
execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{kitchen_lamp_2:1b} positioned 690 106 -29 run function luigis_mansion:spawn_entities/item/gold_coin
execute if data storage luigis_mansion:data current_state.current_data.money_spawned{kitchen_lamp_2:1b} run tag @e[tag=selected] add nothing
data modify storage luigis_mansion:data current_state.current_data.money_spawned merge value {kitchen_lamp_2:1b}