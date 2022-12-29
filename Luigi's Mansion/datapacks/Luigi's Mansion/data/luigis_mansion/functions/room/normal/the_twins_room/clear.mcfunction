function luigis_mansion:room/normal/the_twins_room/turn_on_lights
execute if entity @a[tag=looking_at_map,limit=1] run function luigis_mansion:items/game_boy_horror/map/display/normal/generate
tag @e[scores={Room=49},tag=door,tag=frame] remove blockade
function luigis_mansion:room/normal/the_twins_room/load/room_clear_chest
execute as @a[scores={Room=49},gamemode=!spectator] run function luigis_mansion:other/music/set/light
scoreboard players set #room Room 49
function luigis_mansion:other/music/play/group_0/cleared_room
scoreboard players reset #room Room