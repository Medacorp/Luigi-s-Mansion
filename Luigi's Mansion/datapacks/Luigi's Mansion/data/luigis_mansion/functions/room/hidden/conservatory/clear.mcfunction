function luigis_mansion:room/hidden/conservatory/turn_on_lights
execute if entity @a[tag=looking_at_map,limit=1] run function luigis_mansion:items/game_boy_horror/map/display/hidden/generate
function luigis_mansion:room/hidden/conservatory/stop_music
playsound luigis_mansion:furniture.room_clear_chest.spawn block @a 658 11 32 2
execute as @a[scores={Room=25},gamemode=!spectator] run function luigis_mansion:other/music/set/light
scoreboard players set #room Room 25
function luigis_mansion:other/music/play/group_0/cleared_room
scoreboard players reset #room Room