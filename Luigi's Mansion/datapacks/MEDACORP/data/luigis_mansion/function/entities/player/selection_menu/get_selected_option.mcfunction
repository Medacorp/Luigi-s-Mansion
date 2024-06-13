function luigis_mansion:entities/player/memory/get with entity @s
data modify storage luigis_mansion:data temp set from entity @s Inventory[8].components."minecraft:custom_data".option
execute store success score #temp Time run data modify storage luigis_mansion:data temp set from storage luigis_mansion:data my_memory.selection_menu.options[8]
execute if score #temp Time matches 1 run data modify storage luigis_mansion:data selected_option set from storage luigis_mansion:data my_memory.selection_menu.options[8]
data modify storage luigis_mansion:data temp set from entity @s Inventory[7].components."minecraft:custom_data".option
execute store success score #temp Time run data modify storage luigis_mansion:data temp set from storage luigis_mansion:data my_memory.selection_menu.options[7]
execute if score #temp Time matches 1 run data modify storage luigis_mansion:data selected_option set from storage luigis_mansion:data my_memory.selection_menu.options[7]
data modify storage luigis_mansion:data temp set from entity @s Inventory[6].components."minecraft:custom_data".option
execute store success score #temp Time run data modify storage luigis_mansion:data temp set from storage luigis_mansion:data my_memory.selection_menu.options[6]
execute if score #temp Time matches 1 run data modify storage luigis_mansion:data selected_option set from storage luigis_mansion:data my_memory.selection_menu.options[6]
data modify storage luigis_mansion:data temp set from entity @s Inventory[5].components."minecraft:custom_data".option
execute store success score #temp Time run data modify storage luigis_mansion:data temp set from storage luigis_mansion:data my_memory.selection_menu.options[5]
execute if score #temp Time matches 1 run data modify storage luigis_mansion:data selected_option set from storage luigis_mansion:data my_memory.selection_menu.options[5]
data modify storage luigis_mansion:data temp set from entity @s Inventory[4].components."minecraft:custom_data".option
execute store success score #temp Time run data modify storage luigis_mansion:data temp set from storage luigis_mansion:data my_memory.selection_menu.options[4]
execute if score #temp Time matches 1 run data modify storage luigis_mansion:data selected_option set from storage luigis_mansion:data my_memory.selection_menu.options[4]
data modify storage luigis_mansion:data temp set from entity @s Inventory[3].components."minecraft:custom_data".option
execute store success score #temp Time run data modify storage luigis_mansion:data temp set from storage luigis_mansion:data my_memory.selection_menu.options[3]
execute if score #temp Time matches 1 run data modify storage luigis_mansion:data selected_option set from storage luigis_mansion:data my_memory.selection_menu.options[3]
data modify storage luigis_mansion:data temp set from entity @s Inventory[2].components."minecraft:custom_data".option
execute store success score #temp Time run data modify storage luigis_mansion:data temp set from storage luigis_mansion:data my_memory.selection_menu.options[2]
execute if score #temp Time matches 1 run data modify storage luigis_mansion:data selected_option set from storage luigis_mansion:data my_memory.selection_menu.options[2]
data modify storage luigis_mansion:data temp set from entity @s Inventory[1].components."minecraft:custom_data".option
execute store success score #temp Time run data modify storage luigis_mansion:data temp set from storage luigis_mansion:data my_memory.selection_menu.options[1]
execute if score #temp Time matches 1 run data modify storage luigis_mansion:data selected_option set from storage luigis_mansion:data my_memory.selection_menu.options[1]
data modify storage luigis_mansion:data temp set from entity @s Inventory[0].components."minecraft:custom_data".option
execute store success score #temp Time run data modify storage luigis_mansion:data temp set from storage luigis_mansion:data my_memory.selection_menu.options[0]
execute if score #temp Time matches 1 run data modify storage luigis_mansion:data selected_option set from storage luigis_mansion:data my_memory.selection_menu.options[0]

tag @s remove fetch_option_result

execute if data storage luigis_mansion:data selected_option{id:"next_page"} run function luigis_mansion:entities/player/selection_menu/next_page
execute if data storage luigis_mansion:data selected_option{id:"previous_page"} run function luigis_mansion:entities/player/selection_menu/previous_page
execute if data storage luigis_mansion:data selected_option{id:"reload"} run function luigis_mansion:entities/player/selection_menu/reload
data modify storage luigis_mansion:data memory append from storage luigis_mansion:data my_memory
data remove storage luigis_mansion:data my_memory