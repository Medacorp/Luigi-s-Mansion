teleport @s[y_rotation=-135..-45] ^ ^-0.01 ^ -90 0
teleport @s[y_rotation=-45..45] ^ ^-0.01 ^ 0 0
teleport @s[y_rotation=45..135] ^ ^-0.01 ^ 90 0
teleport @s[y_rotation=135..-135] ^ ^-0.01 ^ -180 0
scoreboard players remove #temp Move 1
tag @s[tag=on_floor] add walked_on_ceiling
execute if score #temp Move matches 1.. positioned as @s[tag=!walked_on_ceiling] run function luigis_mansion:entities/purple_mouse/move_down