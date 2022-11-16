teleport @s ~ ~ ~ ~ ~
execute store result score #interact PosX run data get entity @s Pos[0] 10
execute store result score #interact PosY run data get entity @s Pos[1] 10
execute store result score #interact PosZ run data get entity @s Pos[2] 10
execute as @e[tag=furniture,tag=same_room] if data entity @s ArmorItems[3].tag.scan_message run function luigis_mansion:items/game_boy_horror/scan/target_furniture/root
execute at @s[tag=!furniture_scanned] positioned ~-0.5 ~-0.5 ~-0.5 run tag @e[dx=0,dy=0,dz=0,tag=!scan_ignore,tag=!scanning_player,tag=!model_piece,tag=!hidden,tag=!interact,tag=!spectator,type=!minecraft:item_frame,nbt=!{Marker:1b},limit=1] add target
execute at @s[tag=!furniture_scanned] unless entity @e[tag=target,limit=1] if block ~ ~ ~ minecraft:oak_button[face=floor] run function luigis_mansion:items/game_boy_horror/scan/block
execute at @s[tag=!furniture_scanned] unless entity @e[tag=target,limit=1] if block ~ ~ ~ minecraft:oak_button[face=floor] run scoreboard players set #temp Steps 1
scoreboard players add #temp Move 1
execute at @s[tag=!furniture_scanned] if block ~ ~ ~ minecraft:air unless entity @e[tag=target,limit=1] positioned ^ ^ ^0.5 if score #temp Move matches ..200 run function luigis_mansion_3ds_remake:items/game_boy_horror/scan/target_gooigi