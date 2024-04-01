execute in luigis_mansion:normal run teleport @a 710 29 60 90 0
function luigis_mansion:items/poltergust_3000/ice_element
data modify storage luigis_mansion:data current_state.current_data.obtained_items merge value {ice_element_medal:1b}
data modify storage luigis_mansion:data current_state.current_data.money_spawned set value ["ceramics_studio_long_hook_suspended_encased_lamp"]