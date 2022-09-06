teleport @s[y_rotation=-45..45] ~ ~ ~ 0 ~
teleport @s[y_rotation=-135..-45] ~ ~ ~ -90 ~
teleport @s[y_rotation=45..135] ~ ~ ~ 90 ~
teleport @s[y_rotation=135..-135] ~ ~ ~ -180 ~
execute at @s rotated ~ 0 if block ^0.5 ^0.2 ^ #luigis_mansion:all_ignore run tag @s add can_move_left
execute at @s rotated ~ 0 if block ^-0.5 ^0.2 ^ #luigis_mansion:all_ignore run tag @s add can_move_right
execute at @s run teleport @s[tag=!can_move_left,tag=!can_move_right] ~ ~ ~ ~180 ~
execute at @s run teleport @s[tag=can_move_left] ~ ~ ~ ~90 ~
execute at @s run teleport @s[tag=!can_move_left,tag=can_move_right] ~ ~ ~ ~-90 ~
execute at @s if predicate luigis_mansion:50_50 run teleport @s[tag=can_move_left,tag=can_move_right] ~ ~ ~ ~180 ~
tag @s remove can_move_left
tag @s remove can_move_right