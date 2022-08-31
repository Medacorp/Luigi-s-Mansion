execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["foyer_lamp"]} run function luigis_mansion:spawn_entities/item/gold_coin
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["foyer_lamp"]} run function luigis_mansion:spawn_entities/item/gold_coin
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["foyer_lamp"]} run function luigis_mansion:spawn_entities/item/gold_coin
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["foyer_lamp"]} run function luigis_mansion:spawn_entities/item/gold_coin
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["foyer_lamp"]} run function luigis_mansion:spawn_entities/item/gold_coin
execute if data storage luigis_mansion:data current_state.current_data{money_spawned:["foyer_lamp"]} run tag @e[tag=selected] add nothing
execute unless data luigis_mansion:data current_state.current_data{money_spawned:["foyer_lamp"]} run data modify storage luigis_mansion:data current_state.current_data.money_spawned append value "foyer_lamp"