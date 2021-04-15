title @s[y=41,dy=3] subtitle {"translate":"luigis_mansion:location.floor.1f"}
title @s[y=91,dy=3] subtitle {"translate":"luigis_mansion:location.floor.2f"}
title @s[y=141,dy=3] subtitle {"translate":"luigis_mansion:location.floor.3f"}
title @s[y=191,dy=3] subtitle {"translate":"luigis_mansion:location.floor.roof"}
teleport @s[y=41,dy=3] ~ 80 ~
teleport @s[y=91,dy=3] ~ 130 ~
teleport @s[y=141,dy=3] ~ 180 ~
teleport @s[y=191,dy=3] ~ 230 ~
execute at @s run teleport @s ~ ~11 ~
title @s title ""
execute at @s run playsound luigis_mansion:item.gameboy_horror.map.up_floor player @s ~ ~ ~ 1