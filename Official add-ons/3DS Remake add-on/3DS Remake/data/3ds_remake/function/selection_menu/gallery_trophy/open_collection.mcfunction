tag @s[tag=!game_boy_horror_menu] add gallery_trophy_menu

execute if entity @s[tag=!game_boy_horror_menu] run data modify storage luigis_mansion:data menu_options set value {back:{id:"original_menu",to:{type:"translatable",translate:"luigis_mansion:item.menu.original_menu"}},options:[]}
execute if entity @s[tag=game_boy_horror_menu] run data modify storage luigis_mansion:data menu_options set value {back:{id:"original_menu",gallery_trophy:1b,to:{type:"translatable",translate:"3ds_remake:item.menu.game_boy_horror.gallery_trophy"}},options:[]}

execute unless data storage luigis_mansion:data selected_option.value.suffix run function 3ds_remake:selection_menu/gallery_trophy/open_collection_no_suffix with storage luigis_mansion:data selected_option.value
execute if data storage luigis_mansion:data selected_option.value.suffix run function 3ds_remake:selection_menu/gallery_trophy/open_collection_suffix with storage luigis_mansion:data selected_option.value
data modify storage luigis_mansion:data menu_options.options[].components."minecraft:custom_data".option.gallery_trophy set value 1b

function luigis_mansion:entities/player/selection_menu/load