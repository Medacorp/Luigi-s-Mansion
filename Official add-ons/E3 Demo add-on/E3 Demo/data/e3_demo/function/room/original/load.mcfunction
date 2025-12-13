function luigis_mansion:room/load_exterior {namespace:"e3_demo",id:"original_mansion"}
execute if data storage luigis_mansion:data current_state.current_data{mansion_id:{namespace:"e3_demo",id:"original"},area:-1} run data remove storage luigis_mansion:data current_state.current_data
execute unless data storage luigis_mansion:data current_state.current_data.mansion_id{namespace:"e3_demo",id:"original"} run function e3_demo:room/original/load_data
data modify storage luigis_mansion:data current_state.current_data.mansion_id set value {namespace:"e3_demo",id:"original"}
function luigis_mansion:room/exterior/enter with storage luigis_mansion:data loaded_exterior