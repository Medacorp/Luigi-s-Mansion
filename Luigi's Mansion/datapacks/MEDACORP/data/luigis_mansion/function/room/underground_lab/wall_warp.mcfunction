execute if entity @s[scores={PositionIntZ=4}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~ ~ ~1"}
execute if entity @s[scores={PositionIntX=46}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~-1 ~ ~"}
execute if entity @s[scores={PositionIntZ=13,PositionIntX=42..46}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~ ~ ~-1"}
#Ghost Portrificationizer Room
execute if entity @s[scores={PositionIntZ=13,PositionIntX=32..41}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~5 ~ ~5"}
#Training Room
execute if entity @s[scores={PositionIntX=31}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~-5 ~ ~"}
execute if entity @s[scores={PositionIntY=1}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~ ~1 ~"}
#The Mansion
execute if entity @s[scores={PositionIntY=12}] run function luigis_mansion:room/default_position_in_mansion with storage luigis_mansion:data current_state.current_data.mansion_id
execute unless data storage luigis_mansion:data current_state.current_data.mansion_id if entity @s[scores={PositionIntY=12}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~ ~-1 ~"}
execute unless entity @s[scores={PositionIntX=42..43,PositionIntZ=6..9}] unless entity @s[scores={PositionIntX=41..43,PositionIntZ=7..8}] if entity @s[scores={PositionIntY=7..}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~ ~-1 ~"}