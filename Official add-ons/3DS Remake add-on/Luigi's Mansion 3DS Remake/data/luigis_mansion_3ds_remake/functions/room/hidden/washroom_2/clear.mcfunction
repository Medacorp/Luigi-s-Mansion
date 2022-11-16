function luigis_mansion_3ds_remake:room/hidden/washroom_2/turn_on_lights
execute if entity @a[tag=looking_at_map,limit=1] run function luigis_mansion:items/game_boy_horror/map/display/normal/generate
playsound luigis_mansion:furniture.room_clear_chest.spawn block @a 664 20 38 2
execute as @a[scores={Room=42},gamemode=!spectator] run function luigis_mansion:other/music/set/light
scoreboard players set #room Room 42
function luigis_mansion:other/music/play/group_0/cleared_room
scoreboard players reset #room Room