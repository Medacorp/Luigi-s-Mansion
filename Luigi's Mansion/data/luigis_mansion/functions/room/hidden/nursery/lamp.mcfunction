execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{nursery_lamp:1b} positioned 712 116 -33 run function luigis_mansion:spawn_entities/item/gold_coin
execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{nursery_lamp:1b} positioned 712 116 -31 run function luigis_mansion:spawn_entities/item/gold_coin
execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{nursery_lamp:1b} positioned 713 116 -32 run function luigis_mansion:spawn_entities/item/gold_coin
execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{nursery_lamp:1b} positioned 711 116 -32 run function luigis_mansion:spawn_entities/item/gold_coin
execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{nursery_lamp:1b} positioned 712 115 -32 run function luigis_mansion:spawn_entities/item/gold_coin
execute if data storage luigis_mansion:data current_state.current_data.money_spawned{nursery_lamp:1b} run tag @e[tag=selected] add nothing
data modify storage luigis_mansion:data current_state.current_data.money_spawned merge value {nursery_lamp:1b}