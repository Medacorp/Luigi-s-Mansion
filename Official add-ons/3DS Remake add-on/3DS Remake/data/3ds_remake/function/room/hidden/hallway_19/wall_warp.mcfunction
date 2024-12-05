stopsound @a[scores={PositionIntZ=41,PositionIntX=741..758}] ambient luigis_mansion:block.telephone.ring
scoreboard players set @a[scores={PositionIntZ=41,PositionIntX=741..758}] RoomNoise 1
stopsound @a[scores={PositionIntZ=47,PositionIntX=741..758}] ambient luigis_mansion:block.telephone.ring
scoreboard players set @a[scores={PositionIntZ=47,PositionIntX=741..758}] RoomNoise 1

stopsound @a[scores={PositionIntY=28,PositionIntX=741..745}] ambient luigis_mansion:block.telephone.ring
scoreboard players set @a[scores={PositionIntY=28,PositionIntX=741..745}] RoomNoise 1
stopsound @a[scores={PositionIntY=28,PositionIntX=748..758}] ambient luigis_mansion:block.telephone.ring
scoreboard players set @a[scores={PositionIntY=28,PositionIntX=748..758}] RoomNoise 1
stopsound @a[scores={PositionIntY=36,PositionIntX=740..752}] ambient luigis_mansion:block.telephone.ring
scoreboard players set @a[scores={PositionIntY=36,PositionIntX=740..752}] RoomNoise 1

execute if entity @s[scores={PositionIntX=764}] run function luigis_mansion:entities/luigi/move/teleport {teleport:"~-1 ~ ~"}
execute if entity @s[scores={PositionIntZ=41,PositionIntX=740}] run function luigis_mansion:entities/luigi/move/teleport {teleport:"~ ~ ~1"}
execute if entity @s[scores={PositionIntZ=41,PositionIntX=741..758}] run function luigis_mansion:entities/luigi/move/teleport {teleport:"~-3 ~ ~-8"}
execute if entity @s[scores={PositionIntZ=41,PositionIntX=759..763}] run function luigis_mansion:entities/luigi/move/teleport {teleport:"~ ~ ~1"}
execute if entity @s[scores={PositionIntZ=47,PositionIntX=740}] run function luigis_mansion:entities/luigi/move/teleport {teleport:"~ ~ ~-1"}
execute if entity @s[scores={PositionIntZ=47,PositionIntX=741..758}] run function luigis_mansion:entities/luigi/move/teleport {teleport:"~5 ~ ~9"}
execute if entity @s[scores={PositionIntZ=47,PositionIntX=759..763}] run function luigis_mansion:entities/luigi/move/teleport {teleport:"~ ~ ~-1"}

execute if entity @s[scores={PositionIntY=28,PositionIntX=740}] run function luigis_mansion:entities/luigi/move/teleport {teleport:"~ ~1 ~"}
execute if entity @s[scores={PositionIntY=28,PositionIntX=741..745}] run function luigis_mansion:entities/luigi/move/teleport {teleport:"~-17 ~-2 ~8"}
execute if entity @s[scores={PositionIntY=28,PositionIntX=746..747}] run function luigis_mansion:entities/luigi/move/teleport {teleport:"~ ~1 ~"}
execute if entity @s[scores={PositionIntY=28,PositionIntX=748..758}] run function luigis_mansion:entities/luigi/move/teleport {teleport:"~-10 ~-2 ~-4"}
execute if entity @s[scores={PositionIntY=28,PositionIntX=759..763}] run function luigis_mansion:entities/luigi/move/teleport {teleport:"~ ~1 ~"}
execute if entity @s[scores={PositionIntY=36,PositionIntX=740..752}] run function luigis_mansion:entities/luigi/move/teleport {teleport:"~-41 ~95 ~-16"}
execute if entity @s[scores={PositionIntY=36,PositionIntX=753..763}] run function luigis_mansion:entities/luigi/move/teleport {teleport:"~ ~-1 ~"}