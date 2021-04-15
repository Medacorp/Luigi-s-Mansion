title @s[y=91,dy=3] subtitle {"translate":"luigis_mansion:location.floor.bf"}
title @s[y=141,dy=3] subtitle {"translate":"luigis_mansion:location.floor.1f"}
title @s[y=191,dy=3] subtitle {"translate":"luigis_mansion:location.floor.2f"}
title @s[y=241,dy=3] subtitle {"translate":"luigis_mansion:location.floor.3f"}
teleport @s[y=91,dy=3] ~ 52 ~
teleport @s[y=141,dy=3] ~ 102 ~
teleport @s[y=191,dy=3] ~ 152 ~
teleport @s[y=241,dy=3] ~ 202 ~
execute at @s run teleport @s ~ ~-11 ~
title @s title ""
execute at @s run playsound luigis_mansion:item.gameboy_horror.map.down_floor player @s ~ ~ ~ 1