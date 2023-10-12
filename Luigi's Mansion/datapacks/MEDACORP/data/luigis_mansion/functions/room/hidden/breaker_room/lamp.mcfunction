execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["breaker_room_uncovered_lightbulb"]} run function luigis_mansion:spawn_entities/item/gold_coin
tag @e[tag=this_entity,limit=1] remove this_entity
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["breaker_room_uncovered_lightbulb"]} run function luigis_mansion:spawn_entities/item/gold_coin
tag @e[tag=this_entity,limit=1] remove this_entity
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["breaker_room_uncovered_lightbulb"]} run function luigis_mansion:spawn_entities/item/gold_coin
tag @e[tag=this_entity,limit=1] remove this_entity
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["breaker_room_uncovered_lightbulb"]} run function luigis_mansion:spawn_entities/item/gold_coin
tag @e[tag=this_entity,limit=1] remove this_entity
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["breaker_room_uncovered_lightbulb"]} run function luigis_mansion:spawn_entities/item/gold_coin
tag @e[tag=this_entity,limit=1] remove this_entity
execute if data storage luigis_mansion:data current_state.current_data{money_spawned:["breaker_room_uncovered_lightbulb"]} run tag @e[tag=selected] add nothing
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["breaker_room_uncovered_lightbulb"]} run data modify storage luigis_mansion:data current_state.current_data.money_spawned append value "breaker_room_uncovered_lightbulb"