function e3_demo:room/original/lavatory/turn_on_lights
execute if entity @a[tag=looking_at_map,limit=1] run function e3_demo:items/game_boy_horror/map/display/original/generate
function e3_demo:room/original/lavatory/load/room_clear_chest
execute as @a[scores={Room=13},gamemode=!spectator] unless entity @s[scores={MusicGroup=2,MusicType=3}] run function e3_demo:other/music/play/group_2/cleared_room
execute if data storage luigis_mansion:data current_state.current_data.rooms{living_room:{cleared:1b},study:{cleared:1b},bed_room_1:{cleared:1b},childs_room:{cleared:1b},lavatory:{cleared:1b},dining_room:{cleared:1b},kitchen:{cleared:1b}} run function e3_demo:room/gallery/clear_task/task_2