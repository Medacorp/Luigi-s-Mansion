teleport @s[scores={PositionIntZ=-16}] ~ ~ ~2
execute unless score #extra_gallery Selected matches 1 run teleport @s[scores={PositionIntZ=-41}] ~ ~ ~1
execute if score #extra_gallery Selected matches 1 if entity @s[scores={PositionIntZ=-41}] run function luigis_mansion:selection_menu/extra_gallery_door/spectator_menu
teleport @s[scores={PositionIntX=778}] ~-1 ~ ~
teleport @s[scores={PositionIntX=764,PositionIntZ=-40..-36}] ~1 ~ ~
teleport @s[scores={PositionIntX=764,PositionIntZ=-30..-27}] ~1 ~ ~
teleport @s[scores={PositionIntX=764,PositionIntZ=-21..-16}] ~1 ~ ~

teleport @s[scores={PositionIntY=76}] ~ ~1 ~
teleport @s[scores={PositionIntY=84}] ~ ~-1 ~