stopsound @a[scores={PositionIntX=737}] ambient luigis_mansion:block.telephone.ring
scoreboard players set @a[scores={PositionIntX=737}] RoomNoise 1
stopsound @a[scores={PositionIntZ=-19}] ambient luigis_mansion:block.telephone.ring
scoreboard players set @a[scores={PositionIntZ=-19}] RoomNoise 1
stopsound @a[scores={PositionIntZ=14}] ambient luigis_mansion:block.telephone.ring
scoreboard players set @a[scores={PositionIntZ=14}] RoomNoise 1

stopsound @a[scores={PositionIntY=28,PositionIntX=738..742,PositionIntZ=-18..-14}] ambient luigis_mansion:block.telephone.ring
scoreboard players set @a[scores={PositionIntY=28,PositionIntX=738..742,PositionIntZ=-18..-14}] RoomNoise 1
stopsound @a[scores={PositionIntY=28,PositionIntX=745..755,PositionIntZ=-18..-14}] ambient luigis_mansion:block.telephone.ring
scoreboard players set @a[scores={PositionIntY=28,PositionIntX=745..755,PositionIntZ=-18..-14}] RoomNoise 1
stopsound @a[scores={PositionIntY=28,PositionIntX=738..755,PositionIntZ=-11..6}] ambient luigis_mansion:block.telephone.ring
scoreboard players set @a[scores={PositionIntY=28,PositionIntX=738..755,PositionIntZ=-11..6}] RoomNoise 1
stopsound @a[scores={PositionIntY=28,PositionIntX=738..742,PositionIntZ=9..13}] ambient luigis_mansion:block.telephone.ring
scoreboard players set @a[scores={PositionIntY=28,PositionIntX=738..742,PositionIntZ=9..13}] RoomNoise 1
stopsound @a[scores={PositionIntY=28,PositionIntX=745..755,PositionIntZ=9..13}] ambient luigis_mansion:block.telephone.ring
scoreboard players set @a[scores={PositionIntY=28,PositionIntX=745..755,PositionIntZ=9..13}] RoomNoise 1

stopsound @a[scores={PositionIntY=36,PositionIntX=739..749}] ambient luigis_mansion:block.telephone.ring
scoreboard players set @a[scores={PositionIntY=36,PositionIntX=739..749}] RoomNoise 1

execute if entity @s[scores={PositionIntX=737}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~-40 ~91 ~10"}
execute if entity @s[scores={PositionIntX=756,PositionIntZ=-18..-6}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~-1 ~ ~"}
execute if entity @s[scores={PositionIntX=756,PositionIntZ=1..13}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~-1 ~ ~"}
execute if entity @s[scores={PositionIntX=757..760,PositionIntZ=-6}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~ ~ ~1"}
execute if entity @s[scores={PositionIntX=757..760,PositionIntZ=1}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~ ~ ~-1"}
execute if entity @s[scores={PositionIntX=761}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~-1 ~ ~"}
execute if entity @s[scores={PositionIntZ=-19}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~3 ~ ~-8"}
execute if entity @s[scores={PositionIntZ=14}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~4 ~ ~12"}

execute if entity @s[scores={PositionIntY=28,PositionIntX=756..760}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~ ~1 ~"}
execute if entity @s[scores={PositionIntY=28,PositionIntX=738..742,PositionIntZ=-18..-14}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~-14 ~-2 ~-14"}
execute if entity @s[scores={PositionIntY=28,PositionIntX=743..744,PositionIntZ=-18..-14}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~ ~1 ~"}
execute if entity @s[scores={PositionIntY=28,PositionIntX=745..755,PositionIntZ=-18..-14}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~-7 ~-2 ~-2"}
execute if entity @s[scores={PositionIntY=28,PositionIntX=738..755,PositionIntZ=-13..-12}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~ ~1 ~"}
execute if entity @s[scores={PositionIntY=28,PositionIntX=738..755,PositionIntZ=-11..6}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~-1 ~-2 ~9"}
execute if entity @s[scores={PositionIntY=28,PositionIntX=738..755,PositionIntZ=7..8}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~ ~1 ~"}
execute if entity @s[scores={PositionIntY=28,PositionIntX=738..742,PositionIntZ=9..13}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~-24 ~-2 ~23"}
execute if entity @s[scores={PositionIntY=28,PositionIntX=743..744,PositionIntZ=9..13}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~ ~1 ~"}
execute if entity @s[scores={PositionIntY=28,PositionIntX=745..755,PositionIntZ=9..13}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~-9 ~-2 ~27"}

execute if entity @s[scores={PositionIntY=36,PositionIntX=739..749}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~-38 ~95 ~10"}
execute if entity @s[scores={PositionIntY=36,PositionIntX=750..760}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~ ~-1 ~"}