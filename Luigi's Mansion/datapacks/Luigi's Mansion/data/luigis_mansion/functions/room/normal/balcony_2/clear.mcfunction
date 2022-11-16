function luigis_mansion:room/normal/balcony_2/turn_on_lights
execute if entity @a[tag=looking_at_map,limit=1] run function luigis_mansion:items/game_boy_horror/map/display/normal/generate
function luigis_mansion:room/normal/balcony_2/load/room_clear_chest
scoreboard players set #room Room 53
function luigis_mansion:other/music/play/group_0/cleared_room
scoreboard players reset #room Room