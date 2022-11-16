execute positioned ~-0.5 ~-0.5 ~-0.5 run tag @e[dx=0,dy=0,dz=0,tag=!scan_ignore,tag=!scanning_player,tag=!model_piece,tag=!hidden,tag=!spectator,type=!minecraft:item_frame,nbt=!{Marker:1b},limit=1] add target
execute unless entity @e[tag=target,limit=1] if block ~ ~ ~ minecraft:oak_button[face=floor] run function luigis_mansion:items/game_boy_horror/scan/block
execute unless entity @e[tag=target,limit=1] if block ~ ~ ~ minecraft:oak_button[face=floor] run scoreboard players set #temp Steps 1
scoreboard players add #temp Move 1
execute if block ~ ~ ~ minecraft:air unless entity @e[tag=target,limit=1] positioned ^ ^ ^0.5 if score #temp Move matches ..200 run function luigis_mansion_3ds_remake:items/game_boy_horror/scan/target_gooigi