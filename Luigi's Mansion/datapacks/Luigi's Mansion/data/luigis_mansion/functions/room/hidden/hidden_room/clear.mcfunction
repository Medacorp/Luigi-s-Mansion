function luigis_mansion:room/hidden/hidden_room/turn_on_lights
execute if entity @a[tag=looking_at_map,limit=1] run function luigis_mansion:items/game_boy_horror/map/display/hidden/generate
function luigis_mansion:room/hidden/hidden_room/load/room_clear_chest
execute as @a[scores={Room=24},gamemode=!spectator] run function luigis_mansion:other/music/set/light
scoreboard players set #room Room 24
function luigis_mansion:other/music/play/group_0/cleared_room
scoreboard players reset #room Room