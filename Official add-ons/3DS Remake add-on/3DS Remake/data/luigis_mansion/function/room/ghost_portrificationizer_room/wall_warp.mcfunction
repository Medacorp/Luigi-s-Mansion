execute if entity @s[scores={PositionIntZ=6..21,PositionIntX=778}] run function luigis_mansion:entities/luigi/move/teleport {teleport:"~2 ~ ~"}
execute if entity @s[scores={PositionIntZ=-14..5,PositionIntX=778}] run function luigis_mansion:entities/luigi/move/teleport {teleport:"~-1 ~ ~"}
execute if entity @s[scores={PositionIntX=764}] run function luigis_mansion:entities/luigi/move/teleport {teleport:"~1 ~ ~"}
execute if entity @s[scores={PositionIntZ=23}] run function luigis_mansion:entities/luigi/move/teleport {teleport:"~ ~ ~-1"}
execute if score #global_3ds_remake_gallery Selected matches 0 if entity @s[scores={PositionIntZ=-15}] run function luigis_mansion:entities/luigi/move/teleport {teleport:"~ ~ ~-2"}
execute if score #global_3ds_remake_gallery Selected matches 1 if entity @s[scores={PositionIntZ=-15}] run function luigis_mansion:entities/luigi/move/teleport {teleport:"~ ~-75 ~-2"}

execute if entity @s[scores={PositionIntY=76}] run function luigis_mansion:entities/luigi/move/teleport {teleport:"~ ~1 ~"}
execute if entity @s[scores={PositionIntY=84}] run function luigis_mansion:entities/luigi/move/teleport {teleport:"~ ~-1 ~"}