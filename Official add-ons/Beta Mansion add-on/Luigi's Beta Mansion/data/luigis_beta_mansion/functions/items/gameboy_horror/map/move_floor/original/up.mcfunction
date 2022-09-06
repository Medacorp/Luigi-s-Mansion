title @s[y=41,dy=3] subtitle {"translate":"luigis_mansion:location.floor.1f"}
title @s[y=91,dy=3] subtitle {"translate":"luigis_mansion:location.floor.2f"}
title @s[y=141,dy=3] subtitle {"translate":"luigis_mansion:location.floor.3f"}
title @s[y=191,dy=3] subtitle {"translate":"luigis_mansion:location.floor.roof"}
teleport @s[y=191,dy=3] ~ 241 ~
teleport @s[y=141,dy=3] ~ 191 ~
teleport @s[y=91,dy=3] ~ 141 ~
teleport @s[y=41,dy=3] ~ 91 ~
title @s title ""
execute if entity @s[y=41,dy=3,scores={LastFloor=-1}] run function luigis_beta_mansion:items/gameboy_horror/map/move_floor/original/room
execute if entity @s[y=91,dy=3,scores={LastFloor=0}] run function luigis_beta_mansion:items/gameboy_horror/map/move_floor/original/room
execute if entity @s[y=141,dy=3,scores={LastFloor=1}] run function luigis_beta_mansion:items/gameboy_horror/map/move_floor/original/room
execute if entity @s[y=191,dy=3,scores={LastFloor=2}] run function luigis_beta_mansion:items/gameboy_horror/map/move_floor/original/room
execute if entity @s[y=241,dy=3,scores={LastFloor=3}] run function luigis_beta_mansion:items/gameboy_horror/map/move_floor/original/room
execute at @s run playsound luigis_mansion:item.gameboy_horror.map.up_floor player @s ~ ~ ~ 1