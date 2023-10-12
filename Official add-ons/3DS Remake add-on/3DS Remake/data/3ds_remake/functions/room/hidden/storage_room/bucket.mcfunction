execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["storage_room_metal_bucket"]} run function luigis_mansion:spawn_entities/item/gold_coin
tag @e[tag=this_entity,limit=1] remove this_entity
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["storage_room_metal_bucket"]} run function luigis_mansion:spawn_entities/item/gold_coin
tag @e[tag=this_entity,limit=1] remove this_entity
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["storage_room_metal_bucket"]} run function luigis_mansion:spawn_entities/item/gold_coin
tag @e[tag=this_entity,limit=1] remove this_entity
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["storage_room_metal_bucket"]} run function luigis_mansion:spawn_entities/item/gold_coin
tag @e[tag=this_entity,limit=1] remove this_entity
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["storage_room_metal_bucket"]} run function luigis_mansion:spawn_entities/item/gold_coin
tag @e[tag=this_entity,limit=1] remove this_entity
execute if data storage luigis_mansion:data current_state.current_data{money_spawned:["storage_room_metal_bucket"]} run tag @e[tag=selected] add nothing
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["storage_room_metal_bucket"]} run data modify storage luigis_mansion:data current_state.current_data.money_spawned append value "storage_room_metal_bucket"