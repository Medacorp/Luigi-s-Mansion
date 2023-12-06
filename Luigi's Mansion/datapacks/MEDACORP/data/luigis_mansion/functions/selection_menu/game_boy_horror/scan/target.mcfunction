teleport @s ~ ~ ~ ~ ~
execute store result score #interact PositionX run data get entity @s Pos[0] 10
execute store result score #interact PositionY run data get entity @s Pos[1] 10
execute store result score #interact PositionZ run data get entity @s Pos[2] 10
execute as @e[tag=!furniture,tag=same_room] if data entity @s ArmorItems[3].tag.luigis_mansion.scan_message run function luigis_mansion:selection_menu/game_boy_horror/scan/target_entity/armor_stand_root
execute at @s[tag=!entity_scanned] as @e[tag=!furniture,tag=same_room] if data entity @s data.scan_message run function luigis_mansion:selection_menu/game_boy_horror/scan/target_entity/marker_root
execute at @s[tag=!entity_scanned] as @a[tag=same_room,tag=!scanning_player] run function luigis_mansion:selection_menu/game_boy_horror/scan/target_entity/player_root
execute at @s[tag=!entity_scanned] as @e[tag=furniture,tag=same_room] if data entity @s ArmorItems[3].tag.luigis_mansion.scan_message run function luigis_mansion:selection_menu/game_boy_horror/scan/target_furniture/armor_stand_root
execute at @s[tag=!entity_scanned,tag=!furniture_scanned] as @e[tag=furniture,tag=same_room] if data entity @s data.scan_message run function luigis_mansion:selection_menu/game_boy_horror/scan/target_furniture/marker_root
execute at @s[tag=!entity_scanned,tag=!furniture_scanned] if block ~ ~ ~ #luigis_mansion:game_boy_horror_warp if score #can_warp Selected matches 1 unless entity @s[scores={Dialog=1..}] run tag @s add warp
execute at @s[tag=!entity_scanned,tag=!warp,tag=!furniture_scanned] unless block ~ ~ ~ #luigis_mansion:game_boy_horror_warp unless block ~ ~ ~ #luigis_mansion:game_boy_horror_path run function luigis_mansion:selection_menu/game_boy_horror/scan/block
scoreboard players add #temp Move 1
execute at @s[tag=!entity_scanned,tag=!warp,tag=!furniture_scanned,tag=!scanned_block] if score #temp Move matches 201 if entity @s[y_rotation=87..93,x_rotation=-23..-16] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"selector","selector":"@p[tag=scanning_player,gamemode=!spectator]","color":"green"},{"type":"translatable","translate":"luigis_mansion:message.player.scan_furniture.103"}]}
execute at @s[tag=!entity_scanned,tag=!warp,tag=!furniture_scanned,tag=!scanned_block] if score #temp Move matches 201 if entity @s[y_rotation=87..93,x_rotation=-23..-16] run advancement grant @p[tag=scanning_player,gamemode=!spectator] only luigis_mansion:vanilla/to_infinity_and_beyond
execute at @s[tag=!entity_scanned,tag=!warp,tag=!furniture_scanned,tag=!scanned_block] positioned ^ ^ ^0.5 if score #temp Move matches ..200 run function luigis_mansion:selection_menu/game_boy_horror/scan/target