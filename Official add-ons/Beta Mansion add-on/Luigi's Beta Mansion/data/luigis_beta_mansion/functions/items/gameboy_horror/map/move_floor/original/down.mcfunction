title @s[y=91,dy=3] subtitle {"translate":"luigis_mansion:location.floor.bf"}
title @s[y=141,dy=3] subtitle {"translate":"luigis_mansion:location.floor.1f"}
title @s[y=191,dy=3] subtitle {"translate":"luigis_mansion:location.floor.2f"}
title @s[y=241,dy=3] subtitle {"translate":"luigis_mansion:location.floor.3f"}
teleport @s[y=91,dy=3] ~ 41 ~
teleport @s[y=141,dy=3] ~ 91 ~
teleport @s[y=191,dy=3] ~ 141 ~
teleport @s[y=241,dy=3] ~ 191 ~
title @s title ""
execute if entity @s[y=41,dy=3,scores={LastFloor=-1}] run function luigis_beta_mansion:items/gameboy_horror/map/move_floor/original/room
execute if entity @s[y=91,dy=3,scores={LastFloor=0}] run function luigis_beta_mansion:items/gameboy_horror/map/move_floor/original/room
execute if entity @s[y=141,dy=3,scores={LastFloor=1}] run function luigis_beta_mansion:items/gameboy_horror/map/move_floor/original/room
execute if entity @s[y=191,dy=3,scores={LastFloor=2}] run function luigis_beta_mansion:items/gameboy_horror/map/move_floor/original/room
execute if entity @s[y=241,dy=3,scores={LastFloor=3}] run function luigis_beta_mansion:items/gameboy_horror/map/move_floor/original/room
execute at @s run playsound luigis_mansion:item.gameboy_horror.map.down_floor player @s ~ ~ ~ 1