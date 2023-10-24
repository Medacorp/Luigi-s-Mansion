teleport @s ~ ~ ~ ~ ~
execute store result score #interact PositionX run data get entity @s Pos[0] 10
execute store result score #interact PositionY run data get entity @s Pos[1] 10
execute store result score #interact PositionZ run data get entity @s Pos[2] 10
execute as @e[tag=!furniture,tag=same_room] if data entity @s ArmorItems[3].tag.scan_message run function luigis_mansion:items/game_boy_horror/scan/target_entity/root
execute at @s[tag=!entity_scanned] as @a[tag=same_room,tag=!scanning_player] run function luigis_mansion:items/game_boy_horror/scan/target_entity/player_root
execute at @s[tag=!entity_scanned] as @e[tag=furniture,tag=same_room] if data entity @s ArmorItems[3].tag.scan_message run function luigis_mansion:items/game_boy_horror/scan/target_furniture/root
execute at @s[tag=!entity_scanned,tag=!furniture_scanned] if block ~ ~ ~ #luigis_mansion:game_boy_horror_warp if score #can_warp Selected matches 1 unless entity @s[scores={Dialog=1..}] run tag @s add warp
execute at @s[tag=!entity_scanned,tag=!warp,tag=!furniture_scanned] unless block ~ ~ ~ #luigis_mansion:game_boy_horror_warp unless block ~ ~ ~ #luigis_mansion:game_boy_horror_path unless block ~ ~ ~ minecraft:stone_button[powered=true] run function luigis_mansion:items/game_boy_horror/scan/block
execute at @s[tag=!entity_scanned,tag=!warp,tag=!furniture_scanned,tag=!scanned_block] if block ~ ~ ~ minecraft:barrier if entity @e[type=minecraft:armor_stand,distance=..3,limit=1] run function luigis_mansion:items/game_boy_horror/scan/block
scoreboard players add #temp Move 1
execute at @s[tag=!entity_scanned,tag=!warp,tag=!furniture_scanned,tag=!scanned_block] if score #temp Move matches 201 if entity @s[y_rotation=87..93,x_rotation=-23..-16] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"selector":"@p[tag=scanning_player,gamemode=!spectator]","color":"green"},{"translate":"luigis_mansion:message.player.scan_furniture.103"}]}
execute at @s[tag=!entity_scanned,tag=!warp,tag=!furniture_scanned,tag=!scanned_block] if score #temp Move matches 201 if entity @s[y_rotation=87..93,x_rotation=-23..-16] run advancement grant @p[tag=scanning_player,gamemode=!spectator] only luigis_mansion:challenges/to_infinity_and_beyond
execute at @s[tag=!entity_scanned,tag=!warp,tag=!furniture_scanned,tag=!scanned_block] positioned ^ ^ ^0.5 if score #temp Move matches ..200 run function luigis_mansion:items/game_boy_horror/scan/target