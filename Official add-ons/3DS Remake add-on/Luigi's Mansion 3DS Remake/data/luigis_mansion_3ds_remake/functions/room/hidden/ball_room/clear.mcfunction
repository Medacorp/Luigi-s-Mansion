function luigis_mansion_3ds_remake:room/hidden/ball_room/turn_on_lights
execute if entity @a[tag=looking_at_map,limit=1] run function luigis_mansion:items/game_boy_horror/map/display/normal/generate
function luigis_mansion_3ds_remake:room/hidden/ball_room/load/room_clear_chest
execute as @a[scores={Room=17},gamemode=!spectator] run function luigis_mansion:other/music/set/light
scoreboard players set #room Room 17
function luigis_mansion:other/music/play/group_0/cleared_room
scoreboard players reset #room Room