function luigis_mansion:room/hidden/courtyard/turn_on_lights
execute if entity @a[tag=looking_at_map,limit=1] run function luigis_mansion:items/game_boy_horror/map/display/hidden/generate
playsound luigis_mansion:furniture.room_clear_chest.spawn block @a 650 102 23 2
scoreboard players set #room Room 30
function luigis_mansion:other/music/play/group_0/cleared_room
scoreboard players reset #room Room