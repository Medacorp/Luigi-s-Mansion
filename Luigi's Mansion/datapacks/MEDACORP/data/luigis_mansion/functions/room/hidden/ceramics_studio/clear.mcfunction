function luigis_mansion:room/hidden/ceramics_studio/turn_on_lights
execute if entity @a[tag=looking_at_map,limit=1] run function luigis_mansion:items/game_boy_horror/map/display/hidden/generate
tag @e[scores={Room=65},tag=door,tag=frame] remove blockade
function luigis_mansion:room/hidden/ceramics_studio/load/room_clear_chest
execute as @a[scores={Room=65},gamemode=!spectator] run function luigis_mansion:other/music/set/light
scoreboard players set #room Room 65
function luigis_mansion:other/music/play/group_0/cleared_room
scoreboard players reset #room Room