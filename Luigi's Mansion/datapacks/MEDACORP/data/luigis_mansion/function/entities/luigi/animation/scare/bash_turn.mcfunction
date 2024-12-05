function luigis_mansion:entities/luigi/move/execute {execute:"at @s[y_rotation=-45..45]",teleport:"~ ~ ~ 0 ~"}
function luigis_mansion:entities/luigi/move/execute {execute:"at @s[y_rotation=-135..-45]",teleport:"~ ~ ~ -90 ~"}
function luigis_mansion:entities/luigi/move/execute {execute:"at @s[y_rotation=45..135]",teleport:"~ ~ ~ 90 ~"}
function luigis_mansion:entities/luigi/move/execute {execute:"at @s[y_rotation=135..-135]",teleport:"~ ~ ~ -180 ~"}
execute rotated ~ 0 if block ^0.5 ^0.2 ^ #luigis_mansion:all_ignore run tag @s add can_move_left
execute if entity @s[scores={Shrunk=0}] rotated ~ 0 if block ^0.5 ^1 ^ #luigis_mansion:all_ignore run tag @s add can_move_left
execute rotated ~ 0 if block ^-0.5 ^0.2 ^ #luigis_mansion:all_ignore run tag @s add can_move_right
execute if entity @s[scores={Shrunk=0}] rotated ~ 0 if block ^-0.5 ^1 ^ #luigis_mansion:all_ignore run tag @s add can_move_right
execute if entity @s[tag=!can_move_left,tag=!can_move_right] run function luigis_mansion:entities/luigi/move/teleport {teleport:"~ ~ ~ ~-180 ~"}
execute if entity @s[tag=can_move_left] run function luigis_mansion:entities/luigi/move/teleport {teleport:"~ ~ ~ ~90 ~"}
execute if entity @s[tag=!can_move_left,tag=can_move_right] run function luigis_mansion:entities/luigi/move/teleport {teleport:"~ ~ ~ ~-90 ~"}
execute if entity @s[tag=can_move_left,tag=can_move_right] if predicate luigis_mansion:50_50 run function luigis_mansion:entities/luigi/move/teleport {teleport:"~ ~ ~ ~-180 ~"}
tag @s remove can_move_left
tag @s remove can_move_right