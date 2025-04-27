function luigis_mansion:entities/player/memory/get with entity @s

execute store result score #temp Time run data get storage luigis_mansion:data my_memory.music.jukebox_flags.variant
execute store result score #temp2 Time run data get storage luigis_mansion:data selected_option.values
execute store result storage luigis_mansion:data my_memory.music.jukebox_flags.variant int 1 run scoreboard players add #temp Time 1
execute if score #temp Time = #temp2 Time run data remove storage luigis_mansion:data my_memory.music.jukebox_flags.variant
scoreboard players reset #temp Time
scoreboard players reset #temp2 Time

data modify storage luigis_mansion:data menu_options set from storage luigis_mansion:data my_memory.selection_menu.current_options

data modify storage luigis_mansion:data menu_options.options[{components:{"minecraft:custom_data":{option:{id:"jukebox/toggle/variant",namespace:"luigis_mansion"}}}}].components."minecraft:item_name".with[0] set from storage luigis_mansion:data menu_options.options[{components:{"minecraft:custom_data":{option:{id:"jukebox/toggle/variant",namespace:"luigis_mansion"}}}}].components."minecraft:custom_data".option.values[0]
execute if data storage luigis_mansion:data my_memory.music.jukebox_flags.variant run function luigis_mansion:selection_menu/game_boy_horror/jukebox/toggle/variant_set_name with storage luigis_mansion:data my_memory.music.jukebox_flags
function luigis_mansion:entities/player/selection_menu/load