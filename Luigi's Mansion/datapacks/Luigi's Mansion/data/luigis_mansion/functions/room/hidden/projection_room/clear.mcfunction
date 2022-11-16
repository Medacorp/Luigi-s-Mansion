function luigis_mansion:room/hidden/projection_room/turn_on_lights
execute if entity @a[tag=looking_at_map,limit=1] run function luigis_mansion:items/game_boy_horror/map/display/hidden/generate
playsound luigis_mansion:furniture.room_clear_chest.spawn block @a 681 11 -27 2
execute as @a[scores={Room=48},gamemode=!spectator] run function luigis_mansion:other/music/set/light
scoreboard players set #room Room 48
function luigis_mansion:other/music/play/group_0/cleared_room
scoreboard players reset #room Room