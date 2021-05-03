execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{nursery_lamp:1b} positioned 744 25 -49 run function luigis_mansion:spawn_entities/item/gold_coin
execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{nursery_lamp:1b} positioned 744 25 -47 run function luigis_mansion:spawn_entities/item/gold_coin
execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{nursery_lamp:1b} positioned 745 25 -48 run function luigis_mansion:spawn_entities/item/gold_coin
execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{nursery_lamp:1b} positioned 743 25 -48 run function luigis_mansion:spawn_entities/item/gold_coin
execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{nursery_lamp:1b} positioned 744 24 -48 run function luigis_mansion:spawn_entities/item/gold_coin
execute if data storage luigis_mansion:data current_state.current_data.money_spawned{nursery_lamp:1b} run tag @e[tag=selected] add nothing
data modify storage luigis_mansion:data current_state.current_data.money_spawned merge value {nursery_lamp:1b}