function #luigis_mansion:selection_menu/game_boy_horror/map/move_up_floor
title @s[tag=success] title ""
execute at @s[tag=success] run playsound luigis_mansion:item.game_boy_horror.map.up_floor player @s ~ ~ ~ 1
tag @s remove success