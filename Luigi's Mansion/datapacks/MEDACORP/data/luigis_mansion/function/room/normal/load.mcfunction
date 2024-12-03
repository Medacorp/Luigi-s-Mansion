function luigis_mansion:room/load_exterior {namespace:"luigis_mansion",id:"mansion"}
execute unless data storage luigis_mansion:data current_state.current_data.mansion_id{namespace:"luigis_mansion",id:"normal"} run function luigis_mansion:room/normal/load_data
data modify storage luigis_mansion:data current_state.current_data.mansion_id set value {namespace:"luigis_mansion",id:"normal"}
function luigis_mansion:room/exterior/enter with storage luigis_mansion:data loaded_exterior