function 3ds_remake:room/hidden/mirror_room/turn_on_lights
execute if entity @a[tag=looking_at_map,limit=1] run function luigis_mansion:items/game_boy_horror/map/display/normal/generate
execute if data storage luigis_mansion:data current_state.current_data{blackout:1b} run tag @e[scores={Room=21},tag=door,tag=frame] remove blockade
function 3ds_remake:room/hidden/mirror_room/load/room_clear_chest
execute as @a[scores={Room=21},gamemode=!spectator] run function luigis_mansion:other/music/set/light
scoreboard players set #room Room 21
function luigis_mansion:other/music/play/group_0/cleared_room
scoreboard players reset #room Room