data modify storage luigis_mansion:data current_state.current_data.rooms.sealed_room merge value {seen:1b}
tag @a[tag=looking_at_map,nbt={Dimension:"luigis_mansion:normal"},limit=1] add regenerate_map
function 3ds_remake:room/gallery/clear_task/easy/task_8