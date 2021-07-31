function luigis_mansion:room/normal/foyer/turn_on_lights
execute if entity @a[tag=looking_at_map,limit=1] run function luigis_mansion:items/gameboy_horror/map/display/normal/foyer
scoreboard players set #room Room 1
function luigis_mansion:other/music/play/group_0/cleared_room
scoreboard players reset #room Room