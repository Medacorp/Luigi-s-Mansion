execute if entity @s[scores={PositionIntZ=-16}] run function luigis_mansion:entities/luigi/move/teleport {teleport:"~ ~ ~2"}
execute unless score #extra_gallery Selected matches 1 if entity @s[scores={PositionIntZ=-41}] run function luigis_mansion:entities/luigi/move/teleport {teleport:"~ ~ ~1"}
execute if score #extra_gallery Selected matches 1 if entity @s[scores={PositionIntZ=-41}] run function luigis_mansion:selection_menu/extra_gallery_door/spectator_menu
execute if entity @s[scores={PositionIntX=778}] run function luigis_mansion:entities/luigi/move/teleport {teleport:"~-1 ~ ~"}
execute if entity @s[scores={PositionIntX=764,PositionIntZ=-40..-36}] run function luigis_mansion:entities/luigi/move/teleport {teleport:"~1 ~ ~"}
execute if entity @s[scores={PositionIntX=764,PositionIntZ=-30..-27}] run function luigis_mansion:entities/luigi/move/teleport {teleport:"~1 ~ ~"}
execute if entity @s[scores={PositionIntX=764,PositionIntZ=-21..-16}] run function luigis_mansion:entities/luigi/move/teleport {teleport:"~1 ~ ~"}

execute if entity @s[scores={PositionIntY=76}] run function luigis_mansion:entities/luigi/move/teleport {teleport:"~ ~1 ~"}
execute if entity @s[scores={PositionIntY=84}] run function luigis_mansion:entities/luigi/move/teleport {teleport:"~ ~-1 ~"}