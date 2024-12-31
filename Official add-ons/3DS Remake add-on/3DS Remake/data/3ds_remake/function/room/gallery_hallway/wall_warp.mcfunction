execute if entity @s[scores={PositionIntZ=-31}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~ ~ ~1"}
execute if entity @s[scores={PositionIntZ=-26}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~ ~ ~-1"}
execute if entity @s[scores={PositionIntX=763}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~2 ~ ~"}
execute if entity @s[scores={PositionIntX=746}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~-2 ~ ~"}

execute if entity @s[scores={PositionIntY=1}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~ ~1 ~"}
execute if entity @s[scores={PositionIntY=5,PositionIntX=747..756}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~ ~-1 ~"}
execute if entity @s[scores={PositionIntY=5,PositionIntX=757..762}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~ ~2 ~"}