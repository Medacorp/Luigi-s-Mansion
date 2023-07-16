function 3ds_remake:room/hidden/projection_room/turn_on_lights
execute if entity @a[tag=looking_at_map,limit=1] run function luigis_mansion:items/game_boy_horror/map/display/normal/generate
function 3ds_remake:room/hidden/projection_room/load/room_clear_chest
execute as @a[scores={Room=48},gamemode=!spectator] run function luigis_mansion:other/music/set/light
scoreboard players set #room Room 48
function luigis_mansion:other/music/play/group_0/cleared_room
scoreboard players reset #room Room