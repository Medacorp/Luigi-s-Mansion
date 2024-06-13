function luigis_mansion:selection_menu/game_boy_horror/map/move_up_floor_mansion with storage luigis_mansion:data current_state.current_data.mansion_id
title @s[tag=success,tag=!showing_room_name] title ""
execute at @s[tag=success] run playsound luigis_mansion:item.game_boy_horror.map.up_floor player @s ~ ~ ~ 1
tag @s remove success
tag @s remove showing_room_name