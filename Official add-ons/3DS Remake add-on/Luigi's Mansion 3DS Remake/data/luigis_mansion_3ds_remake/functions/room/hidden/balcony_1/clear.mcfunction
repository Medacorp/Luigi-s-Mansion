function luigis_mansion_3ds_remake:room/hidden/balcony_1/turn_on_lights
execute if entity @a[tag=looking_at_map,limit=1] run function luigis_mansion:items/gameboy_horror/map/display/normal/generate
scoreboard players set #room Room 6
function luigis_mansion:other/music/play/group_0/cleared_room
scoreboard players reset #room Room