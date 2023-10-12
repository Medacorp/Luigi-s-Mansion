execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["butlers_room_chain_suspended_lamp"]} run function luigis_mansion:spawn_entities/item/bill
tag @e[tag=this_entity,limit=1] remove this_entity
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["butlers_room_chain_suspended_lamp"]} run function luigis_mansion:spawn_entities/item/bill
tag @e[tag=this_entity,limit=1] remove this_entity
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["butlers_room_chain_suspended_lamp"]} run function luigis_mansion:spawn_entities/item/bill
tag @e[tag=this_entity,limit=1] remove this_entity
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["butlers_room_chain_suspended_lamp"]} run function luigis_mansion:spawn_entities/item/bill
tag @e[tag=this_entity,limit=1] remove this_entity
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["butlers_room_chain_suspended_lamp"]} run function luigis_mansion:spawn_entities/item/bill
tag @e[tag=this_entity,limit=1] remove this_entity
execute if data storage luigis_mansion:data current_state.current_data{money_spawned:["butlers_room_chain_suspended_lamp"]} run tag @e[tag=selected] add nothing
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["butlers_room_chain_suspended_lamp"]} run data modify storage luigis_mansion:data current_state.current_data.money_spawned append value "butlers_room_chain_suspended_lamp"