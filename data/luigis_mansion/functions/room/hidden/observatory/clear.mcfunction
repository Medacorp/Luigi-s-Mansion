function luigis_mansion:room/hidden/observatory/create_path
function luigis_mansion:room/hidden/observatory/turn_on_lights
execute if entity @a[tag=looking_at_map,limit=1] run function luigis_mansion:items/gameboy_horror/map/display/hidden/observatory
execute as @a[scores={Room=46},gamemode=!spectator] run function luigis_mansion:other/music/play/group_0/cleared_observatory