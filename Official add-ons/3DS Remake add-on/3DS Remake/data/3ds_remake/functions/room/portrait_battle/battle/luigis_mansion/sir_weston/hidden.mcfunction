execute in luigis_mansion:normal run teleport @a 735 2 -3 0 0
function luigis_mansion:items/poltergust_3000/fire_element
data modify storage luigis_mansion:data current_state.current_data.obtained_items merge value {fire_element_medal:1b}
data modify storage luigis_mansion:data current_state.current_data.money_spawned set value ["cold_storage_speedy_spirit"]