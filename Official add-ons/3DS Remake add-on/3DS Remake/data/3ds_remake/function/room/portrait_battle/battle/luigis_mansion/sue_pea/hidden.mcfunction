execute in luigis_mansion:normal run teleport @a 741 20 -45 -180 0
function luigis_mansion:items/poltergust_3000/water_element
data modify storage luigis_mansion:data current_state.current_data.obtained_items merge value {water_element_medal:1b}
data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {sue_pea_spoke:1b}
data modify storage luigis_mansion:data current_state.current_data.money_spawned set value ["guest_room_column_mounted_blue_potted_fern"]