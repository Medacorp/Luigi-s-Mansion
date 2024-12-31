stopsound @a[scores={PositionIntX=737}] ambient luigis_mansion:block.telephone.ring
scoreboard players set @a[scores={PositionIntX=737}] RoomNoise 1
stopsound @a[scores={PositionIntZ=34}] ambient luigis_mansion:block.telephone.ring
scoreboard players set @a[scores={PositionIntZ=34}] RoomNoise 1
stopsound @a[scores={PositionIntZ=1}] ambient luigis_mansion:block.telephone.ring
scoreboard players set @a[scores={PositionIntZ=1}] RoomNoise 1

stopsound @a[scores={PositionIntY=28,PositionIntX=738..742,PositionIntZ=29..33}] ambient luigis_mansion:block.telephone.ring
scoreboard players set @a[scores={PositionIntY=28,PositionIntX=738..742,PositionIntZ=29..33}] RoomNoise 1
stopsound @a[scores={PositionIntY=28,PositionIntX=745..755,PositionIntZ=29..33}] ambient luigis_mansion:block.telephone.ring
scoreboard players set @a[scores={PositionIntY=28,PositionIntX=745..755,PositionIntZ=29..33}] RoomNoise 1
stopsound @a[scores={PositionIntY=28,PositionIntX=738..755,PositionIntZ=9..26}] ambient luigis_mansion:block.telephone.ring
scoreboard players set @a[scores={PositionIntY=28,PositionIntX=738..755,PositionIntZ=9..26}] RoomNoise 1
stopsound @a[scores={PositionIntY=28,PositionIntX=738..742,PositionIntZ=2..6}] ambient luigis_mansion:block.telephone.ring
scoreboard players set @a[scores={PositionIntY=28,PositionIntX=738..742,PositionIntZ=2..6}] RoomNoise 1
stopsound @a[scores={PositionIntY=28,PositionIntX=745..755,PositionIntZ=2..6}] ambient luigis_mansion:block.telephone.ring
scoreboard players set @a[scores={PositionIntY=28,PositionIntX=745..755,PositionIntZ=2..6}] RoomNoise 1

stopsound @a[scores={PositionIntY=36,PositionIntX=739..749}] ambient luigis_mansion:block.telephone.ring
scoreboard players set @a[scores={PositionIntY=36,PositionIntX=739..749}] RoomNoise 1

execute if entity @s[scores={PositionIntX=737}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~-40 ~91 ~-10"}
execute if entity @s[scores={PositionIntX=756,PositionIntZ=21..33}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~-1 ~ ~"}
execute if entity @s[scores={PositionIntX=756,PositionIntZ=2..14}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~-1 ~ ~"}
execute if entity @s[scores={PositionIntX=757..760,PositionIntZ=21}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~ ~ ~-1"}
execute if entity @s[scores={PositionIntX=757..760,PositionIntZ=14}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~ ~ ~1"}
execute if entity @s[scores={PositionIntX=761}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~-1 ~ ~"}
execute if entity @s[scores={PositionIntZ=34}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~3 ~ ~8"}
execute if entity @s[scores={PositionIntZ=1}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~4 ~ ~-12"}

execute if entity @s[scores={PositionIntY=28,PositionIntX=756..760}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~ ~1 ~"}
execute if entity @s[scores={PositionIntY=28,PositionIntX=738..742,PositionIntZ=29..33}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~-14 ~-2 ~14"}
execute if entity @s[scores={PositionIntY=28,PositionIntX=743..744,PositionIntZ=29..33}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~ ~1 ~"}
execute if entity @s[scores={PositionIntY=28,PositionIntX=745..755,PositionIntZ=29..33}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~-7 ~-2 ~2"}
execute if entity @s[scores={PositionIntY=28,PositionIntX=738..755,PositionIntZ=27..28}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~ ~1 ~"}
execute if entity @s[scores={PositionIntY=28,PositionIntX=738..755,PositionIntZ=9..26}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~-1 ~-2 ~-9"}
execute if entity @s[scores={PositionIntY=28,PositionIntX=738..755,PositionIntZ=7..8}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~ ~1 ~"}
execute if entity @s[scores={PositionIntY=28,PositionIntX=738..742,PositionIntZ=2..6}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~-24 ~-2 ~-23"}
execute if entity @s[scores={PositionIntY=28,PositionIntX=743..744,PositionIntZ=2..6}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~ ~1 ~"}
execute if entity @s[scores={PositionIntY=28,PositionIntX=745..755,PositionIntZ=2..6}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~-9 ~-2 ~-27"}

execute if entity @s[scores={PositionIntY=36,PositionIntX=739..749}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~-38 ~95 ~-10"}
execute if entity @s[scores={PositionIntY=36,PositionIntX=750..760}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~ ~-1 ~"}