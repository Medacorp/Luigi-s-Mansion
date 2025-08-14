execute if entity @s[scores={PositionIntZ=17,PositionIntX=0..13}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~ ~ ~1"}
#Training Room
execute if entity @s[scores={PositionIntZ=17,PositionIntX=14..18}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~-5 ~ ~-5"}
#Ghost Portrificationizer Room
execute if entity @s[scores={PositionIntX=18}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~5 ~ ~"}
execute if entity @s[scores={PositionIntZ=28,PositionIntX=14..18}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~ ~ ~-1"}
execute if entity @s[scores={PositionIntZ=28,PositionIntX=0..4}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~ ~ ~-1"}
execute if entity @s[scores={PositionIntX=0}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~1 ~ ~"}
execute if entity @s[scores={PositionIntX=0}] unless entity @s[scores={PositionIntY=2..4,PositionIntZ=19..20}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~1 ~ ~"}
#Extra Gallery
execute if score #extra_gallery Selected matches 1 if entity @s[scores={PositionIntX=0,PositionIntY=2..4,PositionIntZ=19..20}] run function luigis_mansion:selection_menu/extra_gallery_door/spectator_menu
execute unless score #extra_gallery Selected matches 1 if entity @s[scores={PositionIntX=0,PositionIntY=2..4,PositionIntZ=19..20}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~1 ~ ~"}
execute if entity @s[scores={PositionIntY=1}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~ ~1 ~"}
execute if entity @s[scores={PositionIntY=7}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~ ~-1 ~"}