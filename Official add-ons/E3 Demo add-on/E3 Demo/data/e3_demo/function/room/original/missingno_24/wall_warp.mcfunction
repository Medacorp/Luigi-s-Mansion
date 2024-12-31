
execute if entity @s[scores={PositionIntX=650}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~-1 ~ ~"}
execute if entity @s[scores={PositionIntX=646}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~1 ~ ~"}
execute if entity @s[scores={PositionIntZ=-1}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~ ~ ~-1"}

execute if entity @s[scores={PositionIntY=92}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~ ~1 ~"}
execute if entity @s[scores={PositionIntY=100,PositionIntZ=-9}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~ ~2 ~"}