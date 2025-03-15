teleport @s ~ ~ ~ ~ ~
execute store result score #interact PositionX run data get entity @s Pos[0] 10
execute store result score #interact PositionY run data get entity @s Pos[1] 10
execute store result score #interact PositionZ run data get entity @s Pos[2] 10
execute as @e[tag=!furniture,tag=same_room,tag=!player] if data entity @s data.scan_result run function luigis_mansion:selection_menu/game_boy_horror/scan/target_entity/root
execute as @e[tag=!furniture,tag=same_room,tag=!player] if data entity @s data.scan_result run function luigis_mansion:selection_menu/game_boy_horror/scan/target_entity/root
execute as @e[tag=luigi,tag=same_room,tag=!scanning_player] run function luigis_mansion:selection_menu/game_boy_horror/scan/target_entity/root
execute at @s[tag=entity_scanned] as @e[tag=!furniture,tag=same_room,tag=scanned] unless score @s EntitySize = #temp EntitySize run tag @s remove scanned
execute at @s[tag=entity_scanned] as @e[tag=!furniture,tag=same_room,tag=scanned,sort=random,limit=1] run function luigis_mansion:selection_menu/game_boy_horror/scan/target_entity/result
execute at @s[tag=entity_scanned] run tag @e[tag=same_room,tag=player] remove scanned
execute at @s[tag=!entity_scanned] as @e[tag=furniture,tag=same_room] if data entity @s data.scan_result run function luigis_mansion:selection_menu/game_boy_horror/scan/target_furniture/root
execute at @s[tag=!entity_scanned] as @e[tag=furniture,tag=same_room] if data entity @s data.scan_result run function luigis_mansion:selection_menu/game_boy_horror/scan/target_furniture/root
execute at @s[tag=!entity_scanned,tag=furniture_scanned] as @e[tag=furniture,tag=same_room,tag=scanned] unless score @s FurnitureSize = #temp FurnitureSize run tag @s remove scanned
execute at @s[tag=!entity_scanned,tag=furniture_scanned] as @e[tag=furniture,tag=same_room,tag=scanned,sort=random,limit=1] run function luigis_mansion:selection_menu/game_boy_horror/scan/target_furniture/result
execute at @s[tag=!entity_scanned,tag=furniture_scanned] run tag @e[tag=furniture,tag=same_room] remove scanned
#todelete - old furniture
execute at @s[tag=!entity_scanned,tag=!furniture_scanned] if block ~ ~ ~ #luigis_mansion:game_boy_horror_warp run tag @s add warp
execute at @s[tag=!entity_scanned,tag=!furniture_scanned,tag=!warp] unless block ~ ~ ~ #luigis_mansion:game_boy_horror_path run function luigis_mansion:selection_menu/game_boy_horror/scan/block
#/todelete
scoreboard players add #temp Move 1
execute at @s[tag=!entity_scanned,tag=!furniture_scanned,tag=!warp,tag=!scanned_block] if score #temp Move matches 1000 if block ~ ~ ~ #luigis_mansion:game_boy_horror_path if entity @s[y_rotation=87..93,x_rotation=-23..-16] run function luigis_mansion:selection_menu/game_boy_horror/scan/dialog {namespace:"luigis_mansion",id:"scan/scanner/103"}
execute at @s[tag=!entity_scanned,tag=!furniture_scanned,tag=!warp,tag=!scanned_block] if score #temp Move matches 1000 if block ~ ~ ~ #luigis_mansion:game_boy_horror_path if entity @s[y_rotation=87..93,x_rotation=-23..-16] run advancement grant @p[tag=scanning_player] only luigis_mansion:vanilla/to_infinity_and_beyond
execute at @s[tag=!entity_scanned,tag=!furniture_scanned,tag=!warp,tag=!scanned_block] if score #temp Move matches ..999 if block ~ ~ ~ #luigis_mansion:game_boy_horror_path positioned ^ ^ ^0.1 run function luigis_mansion:selection_menu/game_boy_horror/scan/target