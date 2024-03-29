title @s subtitle ""
execute if entity @s[tag=looking_at_map] run function luigis_mansion:selection_menu/game_boy_horror/exit
tag @a[nbt=!{Dimension:"minecraft:overworld"}] remove loaded_chunks
scoreboard players set @a[nbt=!{Dimension:"minecraft:overworld"}] LoadedChunks 0
execute in minecraft:overworld positioned 775 77 16 rotated 150 0 run function luigis_mansion:entities/player/set_position
execute if entity @a[nbt={Inventory:[{tag:{luigis_mansion:{id:"luigis_mansion:poltergust_3000"}}}]}] run function luigis_mansion:items/poltergust_3000/reset_element