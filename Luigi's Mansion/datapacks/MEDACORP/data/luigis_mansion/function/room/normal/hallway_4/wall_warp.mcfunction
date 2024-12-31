scoreboard players set @s[scores={PositionIntZ=-22,PositionIntX=687..695}] RoomNoise 1
scoreboard players set @s[scores={PositionIntZ=-22,PositionIntX=698..711}] RoomNoise 1
scoreboard players set @s[scores={PositionIntZ=-16,PositionIntX=687..698}] RoomNoise 1
scoreboard players set @s[scores={PositionIntZ=-16,PositionIntX=701..711}] RoomNoise 1

scoreboard players set @s[scores={PositionIntY=18}] RoomNoise 1
scoreboard players set @s[scores={PositionIntY=10,PositionIntX=701..711}] RoomNoise 1

execute if entity @s[scores={PositionIntZ=-22,PositionIntX=686}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~ ~ ~1"}
execute if entity @s[scores={PositionIntZ=-22,PositionIntX=687..695}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~-6 ~ ~-17"}
execute if entity @s[scores={PositionIntZ=-22,PositionIntX=696..697}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~ ~ ~1"}
execute if entity @s[scores={PositionIntZ=-22,PositionIntX=698..711}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~-1 ~ ~-17"}
execute if entity @s[scores={PositionIntZ=-22,PositionIntX=712}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~ ~ ~1"}
execute if entity @s[scores={PositionIntZ=-16,PositionIntX=686}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~ ~ ~-1"}
execute if entity @s[scores={PositionIntZ=-16,PositionIntX=687..698}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~-12 ~ ~48"}
execute if entity @s[scores={PositionIntZ=-16,PositionIntX=699..700}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~ ~ ~-1"}
execute if entity @s[scores={PositionIntZ=-16,PositionIntX=701..711}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~-2 ~ ~46"}
execute if entity @s[scores={PositionIntZ=-16,PositionIntX=712}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~ ~ ~-1"}

execute if entity @s[scores={PositionIntY=18}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~ ~2 ~"}
execute if entity @s[scores={PositionIntY=10,PositionIntX=712}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~ ~1 ~"}
execute if entity @s[scores={PositionIntY=10,PositionIntX=701..711}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~-13 ~-2 ~22"}
execute if entity @s[scores={PositionIntY=10,PositionIntX=686..700}] run function luigis_mansion:entities/luigi/move/wall_warp_teleport {teleport:"~ ~1 ~"}