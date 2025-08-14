execute if entity @s[scores={PositionIntZ=0}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~ ~ ~1"}
execute if entity @s[scores={PositionIntX=27,PositionIntZ=0..4}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~-1 ~ ~"}
#Underground Lab
execute if entity @s[scores={PositionIntX=27,PositionIntZ=5..12}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~5 ~ ~"}
#Ghost Postrificationizer Room
execute if entity @s[scores={PositionIntZ=13,PositionIntX=13..27}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~10 ~ ~5"}
#Gallery
execute if entity @s[scores={PositionIntZ=13,PositionIntX=8..12}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~5 ~ ~5"}
execute if entity @s[scores={PositionIntX=8}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~1 ~ ~"}
execute if entity @s[scores={PositionIntY=1}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~ ~1 ~"}
execute if entity @s[scores={PositionIntY=7}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~ ~-1 ~"}