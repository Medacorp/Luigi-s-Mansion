tag @s add gallery_portrait_menu

data modify storage luigis_mansion:data menu_options set value {back:{id:"portrait_ghost",to:{type:"translatable",translate:"luigis_mansion:item.menu.original_menu"}},options:[]}
data modify storage luigis_mansion:data menu_options.back merge from storage luigis_mansion:data selected_option.back_overwrite
data modify storage luigis_mansion:data menu_options.back.uuid set from storage luigis_mansion:data selected_option.uuid
data modify storage luigis_mansion:data menu_options.back.portrait_ghost set from storage luigis_mansion:data selected_option.portrait_ghost
data modify storage luigis_mansion:data menu_options.back.portrait_battle_position set from storage luigis_mansion:data selected_option.portrait_battle_position

function 3ds_remake:selection_menu/gallery_portrait/get_portrait_battles with storage luigis_mansion:data selected_option.portrait_ghost
execute if data storage 3ds_remake:data portrait_battles[0] run function 3ds_remake:selection_menu/gallery_portrait/add_portrait_battle
data remove storage 3ds_remake:data portrait_battles

data modify storage luigis_mansion:data menu_options.options[].components."minecraft:custom_data".option.uuid set from storage luigis_mansion:data selected_option.uuid
data modify storage luigis_mansion:data menu_options.options[].components."minecraft:custom_data".option.portrait_ghost set from storage luigis_mansion:data selected_option.portrait_ghost
data modify storage luigis_mansion:data menu_options.options[].components."minecraft:custom_data".option.portrait_battle_position set from storage luigis_mansion:data selected_option.portrait_battle_position
data modify storage luigis_mansion:data menu_options.options[].components."minecraft:custom_data".option.portraits set from storage luigis_mansion:data selected_option.portraits

function luigis_mansion:entities/player/selection_menu/load