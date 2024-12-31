execute if entity @s[scores={PositionIntZ=-42}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~ ~ ~2"}
execute if score #extra_gallery Selected matches 0 if entity @s[scores={PositionIntZ=-60}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~ ~ ~1"}
execute if score #extra_gallery Selected matches 1 if entity @s[scores={PositionIntZ=-60}] run function luigis_mansion:selection_menu/extra_gallery_door/spectator_menu
execute if entity @s[scores={PositionIntX=776}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~-1 ~ ~"}
execute if entity @s[scores={PositionIntX=765}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~1 ~ ~"}

execute if entity @s[scores={PositionIntY=1}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~ ~1 ~"}
execute if entity @s[scores={PositionIntY=12}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~ ~-1 ~"}