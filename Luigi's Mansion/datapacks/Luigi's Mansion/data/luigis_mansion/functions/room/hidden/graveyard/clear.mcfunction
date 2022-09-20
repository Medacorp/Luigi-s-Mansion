function luigis_mansion:room/hidden/graveyard/turn_on_lights
execute if entity @a[tag=looking_at_map,limit=1] run function luigis_mansion:items/gameboy_horror/map/display/hidden/generate
function luigis_mansion:room/hidden/graveyard/load/room_clear_chest
scoreboard players set #room Room 29
function luigis_mansion:other/music/play/group_0/cleared_room
scoreboard players reset #room Room