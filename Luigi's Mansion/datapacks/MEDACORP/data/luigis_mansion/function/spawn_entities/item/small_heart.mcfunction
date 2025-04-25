execute unless data storage luigis_mansion:data entity.type run function luigis_mansion:items/money/get_count/select with storage luigis_mansion:data current_state.current_data.drop_item_on_damage
execute unless data storage luigis_mansion:data entity.type unless score #temp Money >= #heart_money_count Selected run data modify storage luigis_mansion:data entity.type set value "small"
execute unless data storage luigis_mansion:data entity.type if score #temp Money >= #heart_money_count Selected run data modify storage luigis_mansion:data entity.type set value "medium"
scoreboard players reset #temp Money
execute unless data storage luigis_mansion:data entity{type:"medium"} run function luigis_mansion:spawn_entities/item/small_heart/small
execute if data storage luigis_mansion:data entity{type:"medium"} run function luigis_mansion:spawn_entities/item/small_heart/medium