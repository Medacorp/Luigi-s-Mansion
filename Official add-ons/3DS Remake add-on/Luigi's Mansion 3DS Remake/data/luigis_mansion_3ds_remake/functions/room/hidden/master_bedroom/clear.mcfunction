function luigis_mansion_3ds_remake:room/hidden/master_bedroom/turn_on_lights
execute if entity @a[tag=looking_at_map,limit=1] run function luigis_mansion:items/gameboy_horror/map/display/normal/generate
function luigis_mansion_3ds_remake:room/hidden/master_bedroom/load/room_clear_chest
execute as @a[scores={Room=9},gamemode=!spectator] run function luigis_mansion:other/music/set/light
scoreboard players set #room Room 9
function luigis_mansion:other/music/play/group_0/cleared_room
scoreboard players reset #room Room