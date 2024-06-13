execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["foyer_inside_lantern"]} run data modify storage luigis_mansion:data entity set value {room:1}
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["foyer_inside_lantern"]} run function luigis_mansion:spawn_entities/item/gold_coin
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["foyer_inside_lantern"]} run data modify storage luigis_mansion:data entity set value {room:1}
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["foyer_inside_lantern"]} run function luigis_mansion:spawn_entities/item/gold_coin
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["foyer_inside_lantern"]} run data modify storage luigis_mansion:data entity set value {room:1}
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["foyer_inside_lantern"]} run function luigis_mansion:spawn_entities/item/gold_coin
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["foyer_inside_lantern"]} run data modify storage luigis_mansion:data entity set value {room:1}
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["foyer_inside_lantern"]} run function luigis_mansion:spawn_entities/item/gold_coin
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["foyer_inside_lantern"]} run data modify storage luigis_mansion:data entity set value {room:1}
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["foyer_inside_lantern"]} run function luigis_mansion:spawn_entities/item/gold_coin
execute if data storage luigis_mansion:data current_state.current_data{money_spawned:["foyer_inside_lantern"]} run tag @e[tag=selected] add nothing
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["foyer_inside_lantern"]} run data modify storage luigis_mansion:data current_state.current_data.money_spawned append value "foyer_inside_lantern"