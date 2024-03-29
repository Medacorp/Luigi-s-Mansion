function e3_demo:room/original/kitchen/turn_on_lights
tag @a[tag=looking_at_map,nbt={Dimension:"e3_demo:original"},limit=1] add regenerate_map
function e3_demo:room/original/kitchen/load/room_clear_chest
execute as @a[scores={Room=15}] run function e3_demo:other/music/play/group_2/cleared_room
execute if data storage luigis_mansion:data current_state.current_data.rooms{living_room:{cleared:1b},study:{cleared:1b},bed_room_1:{cleared:1b},childs_room:{cleared:1b},lavatory:{cleared:1b},dining_room:{cleared:1b},kitchen:{cleared:1b}} run function e3_demo:room/gallery/clear_task/task_2