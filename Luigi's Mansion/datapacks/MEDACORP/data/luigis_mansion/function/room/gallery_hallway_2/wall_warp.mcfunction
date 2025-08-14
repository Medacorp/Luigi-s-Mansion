#Gallery Back Room
execute if entity @s[scores={PositionIntZ=48}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~ ~ ~5"}
execute if entity @s[scores={PositionIntX=4}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~1 ~ ~"}

execute if entity @s[scores={PositionIntY=1}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~ ~1 ~"}
execute if entity @s[scores={PositionIntY=7}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~ ~-1 ~"}