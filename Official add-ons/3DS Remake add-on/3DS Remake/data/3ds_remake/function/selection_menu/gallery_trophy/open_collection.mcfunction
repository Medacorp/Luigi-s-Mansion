tag @s add gallery_trophy_menu

data modify storage luigis_mansion:data menu_options set value {back:{id:"original_menu",to:'{"type":"translatable","translate":"luigis_mansion:item.menu.original_menu"}'},options:[]}

execute unless data storage luigis_mansion:data selected_option.value.suffix run function 3ds_remake:selection_menu/gallery_trophy/open_collection_no_suffix with storage luigis_mansion:data selected_option.value
execute if data storage luigis_mansion:data selected_option.value.suffix run function 3ds_remake:selection_menu/gallery_trophy/open_collection_suffix with storage luigis_mansion:data selected_option.value

function luigis_mansion:entities/player/selection_menu/load