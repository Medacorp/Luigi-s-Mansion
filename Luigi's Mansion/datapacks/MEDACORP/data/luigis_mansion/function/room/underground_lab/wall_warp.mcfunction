execute if entity @s[scores={PositionIntZ=23}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~ ~ ~-1"}
execute if entity @s[scores={PositionIntX=780..782,PositionIntZ=5}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~ ~ ~1"}
execute if entity @s[scores={PositionIntX=783..795,PositionIntZ=5}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~ ~ ~-2"}
execute if entity @s[scores={PositionIntX=796}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~-1 ~ ~"}
execute if entity @s[scores={PositionIntX=779}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~-2 ~ ~"}

execute if entity @s[scores={PositionIntY=76}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~ ~1 ~"}
execute if entity @s[scores={PositionIntY=84,PositionIntX=788..789,PositionIntZ=21..22}] run function luigis_mansion:room/default_position_in_mansion with storage luigis_mansion:data current_state.current_data.mansion_id
execute unless data storage luigis_mansion:data current_state.current_data.mansion_id if entity @s[scores={PositionIntY=84,PositionIntX=788..789,PositionIntZ=21..22}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~ ~-1 ~"}
execute unless entity @s[scores={PositionIntX=788..789,PositionIntZ=21..22}] if entity @s[scores={PositionIntY=84}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~ ~-1 ~"}