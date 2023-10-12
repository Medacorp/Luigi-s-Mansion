execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["kitchen_oven"]} run function luigis_mansion:spawn_entities/item/red_ruby
tag @e[tag=this_entity,limit=1] remove this_entity
execute if data storage luigis_mansion:data current_state.current_data{money_spawned:["kitchen_oven"]} run tag @e[tag=selected] add nothing
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["kitchen_oven"]} run data modify storage luigis_mansion:data current_state.current_data.money_spawned append value "kitchen_oven"