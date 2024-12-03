function luigis_mansion:room/reset_mansion with storage luigis_mansion:data current_state.current_data.mansion_id
function luigis_mansion:room/load_exterior {namespace:"e3_demo",id:"original_mansion"}
data modify storage luigis_mansion:data current_state.current_data set value {nothing_loaded:1b}
function e3_demo:room/original/load_data
function luigis_mansion:data/save