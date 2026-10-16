execute unless data storage luigis_mansion:data selected_option run tellraw @s {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.mansion",color:"green"},{type:"translatable",translate:"3ds_remake:message.gallery.trophy"}]}
execute if data storage luigis_mansion:data selected_option{send_message:1b} run tellraw @s {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.mansion",color:"green"},{type:"translatable",translate:"3ds_remake:message.gallery.trophy"}]}
tag @s[tag=!game_boy_horror_menu] add gallery_trophy_menu

data modify storage luigis_mansion:data menu_options set value {options:[]}
execute if entity @s[tag=game_boy_horror_menu] run data modify storage luigis_mansion:data menu_options.back set value {id:"original_menu",to:{type:"translatable",translate:"luigis_mansion:item.menu.original_menu"}}
function #3ds_remake:selection_menu/gallery_trophy/collections
data modify storage luigis_mansion:data menu_options.options[].components."minecraft:custom_data".option.gallery_trophy set value 1b

function luigis_mansion:entities/player/selection_menu/load