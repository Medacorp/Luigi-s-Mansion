tag @s add change_page

data modify storage luigis_mansion:data menu_options set from storage luigis_mansion:data my_memory.selection_menu.current_options

function luigis_mansion:entities/player/selection_menu/load
tag @s remove change_page
execute unless data storage luigis_mansion:data selected_option.action run data remove storage luigis_mansion:data selected_option