teleport @s[scores={PositionIntZ=-42}] ~ ~ ~2
execute if score #extra_gallery Selected matches 0 run teleport @s[scores={PositionIntZ=-60}] ~ ~ ~1
execute if score #extra_gallery Selected matches 1 if entity @s[scores={PositionIntZ=-60}] run function luigis_mansion:selection_menu/extra_gallery_door/spectator_menu
teleport @s[scores={PositionIntX=776}] ~-1 ~ ~
teleport @s[scores={PositionIntX=765}] ~1 ~ ~

teleport @s[scores={PositionIntY=1}] ~ ~1 ~
teleport @s[scores={PositionIntY=12}] ~ ~-1 ~