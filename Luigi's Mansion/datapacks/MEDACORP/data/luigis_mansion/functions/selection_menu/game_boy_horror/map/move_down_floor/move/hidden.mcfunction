title @s[y=41,dy=3] subtitle {"type":"translatable","translate":"luigis_mansion:location.floor.1f"}
title @s[y=91,dy=3] subtitle {"type":"translatable","translate":"luigis_mansion:location.floor.2f"}
title @s[y=141,dy=3] subtitle {"type":"translatable","translate":"luigis_mansion:location.floor.3f"}
title @s[y=191,dy=3] subtitle {"type":"translatable","translate":"luigis_mansion:location.floor.roof"}
teleport @s[y=191,dy=3] ~ 241 ~
teleport @s[y=141,dy=3] ~ 191 ~
teleport @s[y=91,dy=3] ~ 141 ~
teleport @s[y=41,dy=3] ~ 91 ~
scoreboard players operation #temp Room = @s Room
execute if entity @s[y=41,dy=3,scores={LastFloor=-1}] run function luigis_mansion:selection_menu/game_boy_horror/map/show_room_name/hidden
execute if entity @s[y=91,dy=3,scores={LastFloor=0}] run function luigis_mansion:selection_menu/game_boy_horror/map/show_room_name/hidden
execute if entity @s[y=141,dy=3,scores={LastFloor=1}] run function luigis_mansion:selection_menu/game_boy_horror/map/show_room_name/hidden
execute if entity @s[y=191,dy=3,scores={LastFloor=2}] run function luigis_mansion:selection_menu/game_boy_horror/map/show_room_name/hidden
execute if entity @s[y=241,dy=3,scores={LastFloor=3}] run function luigis_mansion:selection_menu/game_boy_horror/map/show_room_name/hidden
scoreboard players reset #temp Room
tag @s add success