#Underground Lab
execute if entity @s[scores={PositionIntZ=17,PositionIntX=37..47}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~-5 ~ ~-5"}
#Training Room
execute if entity @s[scores={PositionIntZ=17,PositionIntX=22..36}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~-10 ~ ~-5"}
execute if entity @s[scores={PositionIntX=47}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~-1 ~ ~"}
execute if entity @s[scores={PositionIntZ=28}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~ ~ ~-1"}
#Gallery
execute if entity @s[scores={PositionIntX=22}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~-5 ~ ~"}
execute if entity @s[scores={PositionIntY=1}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~ ~1 ~"}
execute if entity @s[scores={PositionIntY=7}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~ ~-1 ~"}