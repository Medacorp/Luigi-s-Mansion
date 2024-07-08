title @s subtitle ""
execute if entity @s[tag=looking_at_map] run function luigis_mansion:selection_menu/game_boy_horror/exit
tag @a[nbt=!{Dimension:"minecraft:overworld"}] remove loaded_chunks
scoreboard players set @a[nbt=!{Dimension:"minecraft:overworld"}] LoadedChunks 0
execute in minecraft:overworld positioned 795.0 77 -8.0 rotated 90 0 run function luigis_mansion:entities/player/set_position
execute if entity @a[nbt={Inventory:[{components:{"minecraft:custom_data":{is_poltergust:1b}}}]}] run function luigis_mansion:items/poltergust_3000/reset_element
scoreboard players set @s Health 100