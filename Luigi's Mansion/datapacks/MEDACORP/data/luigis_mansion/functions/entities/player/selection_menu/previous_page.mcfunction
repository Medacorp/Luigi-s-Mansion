tag @s add change_page

data modify storage luigis_mansion:data menu_options set from storage luigis_mansion:data my_memory.selection_menu.current_options
data modify storage luigis_mansion:data menu_options.options prepend from storage luigis_mansion:data menu_options.options[-1]
data remove storage luigis_mansion:data menu_options.options[-1]
data modify storage luigis_mansion:data menu_options.options prepend from storage luigis_mansion:data menu_options.options[-1]
data remove storage luigis_mansion:data menu_options.options[-1]
data modify storage luigis_mansion:data menu_options.options prepend from storage luigis_mansion:data menu_options.options[-1]
data remove storage luigis_mansion:data menu_options.options[-1]
data modify storage luigis_mansion:data menu_options.options prepend from storage luigis_mansion:data menu_options.options[-1]
data remove storage luigis_mansion:data menu_options.options[-1]
data modify storage luigis_mansion:data menu_options.options prepend from storage luigis_mansion:data menu_options.options[-1]
data remove storage luigis_mansion:data menu_options.options[-1]
execute unless data storage luigis_mansion:data menu_options{back:{}} run data modify storage luigis_mansion:data menu_options.options prepend from storage luigis_mansion:data menu_options.options[-1]
execute unless data storage luigis_mansion:data menu_options{back:{}} run data remove storage luigis_mansion:data menu_options.options[-1]
execute if data storage luigis_mansion:data menu_options.no_exit run data modify storage luigis_mansion:data menu_options.options prepend from storage luigis_mansion:data menu_options.options[-1]
execute if data storage luigis_mansion:data menu_options.no_exit run data remove storage luigis_mansion:data menu_options.options[-1]

function luigis_mansion:entities/player/selection_menu/load
tag @s remove change_page
data remove storage luigis_mansion:data selected_option