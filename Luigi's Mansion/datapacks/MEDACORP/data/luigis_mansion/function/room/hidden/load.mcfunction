function luigis_mansion:room/load_exterior {namespace:"luigis_mansion",id:"mansion"}
execute if data storage luigis_mansion:data current_state.current_data{mansion_id:{namespace:"luigis_mansion",id:"hidden"},area:-1} run data remove storage luigis_mansion:data current_state.current_data
execute unless data storage luigis_mansion:data current_state.current_data.mansion_id{namespace:"luigis_mansion",id:"hidden"} run function luigis_mansion:room/hidden/load_data
data modify storage luigis_mansion:data current_state.current_data.mansion_id set value {namespace:"luigis_mansion",id:"hidden"}
function luigis_mansion:room/exterior/enter with storage luigis_mansion:data loaded_exterior