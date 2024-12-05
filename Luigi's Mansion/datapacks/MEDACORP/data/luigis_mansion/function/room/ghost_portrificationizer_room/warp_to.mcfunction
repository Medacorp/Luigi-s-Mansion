title @s subtitle ""
execute if entity @s[tag=looking_at_map] run function luigis_mansion:selection_menu/game_boy_horror/exit
tag @s[nbt=!{Dimension:"minecraft:overworld"}] remove loaded_chunks
scoreboard players set @s[nbt=!{Dimension:"minecraft:overworld"}] LoadedChunks 0
function luigis_mansion:entities/luigi/move/execute {execute:"in minecraft:overworld",teleport:"775 77 16 150 0"}
function luigis_mansion:items/poltergust_3000/remove_element