teleport @s ~ ~ ~ ~ ~
execute store result score #interact PositionX run data get entity @s Pos[0] 10
execute store result score #interact PositionY run data get entity @s Pos[1] 10
execute store result score #interact PositionZ run data get entity @s Pos[2] 10
execute if entity @s[tag=!furniture] as @e[tag=!furniture,tag=same_room] run function luigis_mansion:selection_menu/game_boy_horror/show_settings/debug/target_entity
execute at @s[tag=!entity_scanned,tag=!entity] as @e[tag=furniture,tag=same_room] run function luigis_mansion:selection_menu/game_boy_horror/show_settings/debug/target_furniture
execute at @s[tag=!entity_scanned,tag=!furniture_scanned] unless block ~ ~ ~ #luigis_mansion:game_boy_horror_path run tag @s add scanned_block
scoreboard players add #temp Move 1
execute at @s[tag=!entity_scanned,tag=!furniture_scanned,tag=!scanned_block] positioned ^ ^ ^0.1 if score #temp Move matches ..200 run function luigis_mansion:selection_menu/game_boy_horror/show_settings/debug/target