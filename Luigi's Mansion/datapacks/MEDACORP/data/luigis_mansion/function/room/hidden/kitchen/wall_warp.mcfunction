scoreboard players set @s[scores={PositionIntX=710,PositionIntZ=-56..-48}] RoomNoise 1
scoreboard players set @s[scores={PositionIntX=710,PositionIntZ=-75..-59}] RoomNoise 1
scoreboard players set @s[scores={PositionIntX=698,PositionIntZ=-56..-48}] RoomNoise 1
scoreboard players set @s[scores={PositionIntX=698,PositionIntZ=-75..-59}] RoomNoise 1
scoreboard players set @s[scores={PositionIntZ=62}] RoomNoise 1

scoreboard players set @s[scores={PositionIntY=18,PositionIntZ=-56..-48}] RoomNoise 1
scoreboard players set @s[scores={PositionIntY=18,PositionIntZ=-75..-59}] RoomNoise 1

execute if entity @s[scores={PositionIntX=710,PositionIntZ=-56..-48}] run function luigis_mansion:entities/luigi/move/teleport {teleport:"~4 ~ ~48"}
execute if entity @s[scores={PositionIntX=710,PositionIntZ=-58..-57}] run function luigis_mansion:entities/luigi/move/teleport {teleport:"~-1 ~ ~"}
execute if entity @s[scores={PositionIntX=710,PositionIntZ=-75..-59}] run function luigis_mansion:entities/luigi/move/teleport {teleport:"~4 ~ ~15"}
execute if entity @s[scores={PositionIntX=698,PositionIntZ=-56..-48}] run function luigis_mansion:entities/luigi/move/teleport {teleport:"~-12 ~ ~-17"}
execute if entity @s[scores={PositionIntX=698,PositionIntZ=-58..-57}] run function luigis_mansion:entities/luigi/move/teleport {teleport:"~1 ~ ~"}
execute if entity @s[scores={PositionIntX=698,PositionIntZ=-75..-59}] run function luigis_mansion:entities/luigi/move/teleport {teleport:"~-14 ~91 ~35"}
execute if entity @s[scores={PositionIntZ=-76}] run function luigis_mansion:entities/luigi/move/teleport {teleport:"~ ~ ~1"}
execute if entity @s[scores={PositionIntZ=-47}] run function luigis_mansion:entities/luigi/move/teleport {teleport:"~ ~ ~6"}

execute if entity @s[scores={PositionIntY=10}] run function luigis_mansion:entities/luigi/move/teleport {teleport:"~ ~1 ~"}
execute if entity @s[scores={PositionIntY=18,PositionIntZ=-56..-48}] run function luigis_mansion:entities/luigi/move/teleport {teleport:"~6 ~2 ~10"}
execute if entity @s[scores={PositionIntY=18,PositionIntZ=-58..-57}] run function luigis_mansion:entities/luigi/move/teleport {teleport:"~ ~-1 ~"}
execute if entity @s[scores={PositionIntY=18,PositionIntZ=-75..-59}] run function luigis_mansion:entities/luigi/move/teleport {teleport:"~-12 ~93 ~35"}