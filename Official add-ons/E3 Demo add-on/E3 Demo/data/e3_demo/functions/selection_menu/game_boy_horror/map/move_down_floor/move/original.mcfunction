title @s[y=91,dy=3] subtitle {"translate":"luigis_mansion:location.floor.bf"}
title @s[y=141,dy=3] subtitle {"translate":"luigis_mansion:location.floor.1f"}
title @s[y=191,dy=3] subtitle {"translate":"luigis_mansion:location.floor.2f"}
title @s[y=241,dy=3] subtitle {"translate":"luigis_mansion:location.floor.3f"}
teleport @s[y=91,dy=3] ~ 41 ~
teleport @s[y=141,dy=3] ~ 91 ~
teleport @s[y=191,dy=3] ~ 141 ~
teleport @s[y=241,dy=3] ~ 191 ~
tag @s add success
scoreboard players operation #temp Room = @s Room
execute if entity @s[y=41,dy=3,scores={LastFloor=-1}] run function e3_demo:selection_menu/game_boy_horror/map/show_room_name/original
execute if entity @s[y=91,dy=3,scores={LastFloor=0}] run function e3_demo:selection_menu/game_boy_horror/map/show_room_name/original
execute if entity @s[y=141,dy=3,scores={LastFloor=1}] run function e3_demo:selection_menu/game_boy_horror/map/show_room_name/original
execute if entity @s[y=191,dy=3,scores={LastFloor=2}] run function e3_demo:selection_menu/game_boy_horror/map/show_room_name/original
execute if entity @s[y=241,dy=3,scores={LastFloor=3}] run function e3_demo:selection_menu/game_boy_horror/map/show_room_name/original
scoreboard players reset #temp Room