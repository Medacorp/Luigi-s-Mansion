data modify storage luigis_mansion:data menu_options set value {back:{id:"show_settings",to:{type:"translatable",translate:"luigis_mansion:item.menu.game_boy_horror.show_settings"},update_global_variables:1b},options:[]}

function #luigis_mansion:selection_menu/game_boy_horror/show_settings/map
data modify storage luigis_mansion:data menu_options.options append value {}
function #luigis_mansion:selection_menu/game_boy_horror/show_settings/map_global

function luigis_mansion:entities/player/selection_menu/load