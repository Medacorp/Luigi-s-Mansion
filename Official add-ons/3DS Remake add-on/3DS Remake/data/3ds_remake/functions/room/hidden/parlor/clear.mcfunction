function 3ds_remake:room/hidden/parlor/turn_on_lights
execute if entity @a[tag=looking_at_map,limit=1] run function luigis_mansion:items/game_boy_horror/map/display/normal/generate
tag @e[scores={Room=3},tag=door,tag=frame] remove blockade
function 3ds_remake:room/hidden/parlor/load/room_clear_chest
execute as @a[scores={Room=3},gamemode=!spectator] run function luigis_mansion:other/music/set/light
scoreboard players set #room Room 3
function luigis_mansion:other/music/play/group_0/cleared_room
scoreboard players reset #room Room