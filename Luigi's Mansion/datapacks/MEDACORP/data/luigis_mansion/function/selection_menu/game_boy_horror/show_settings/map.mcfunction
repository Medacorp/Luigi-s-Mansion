data modify storage luigis_mansion:data menu_options set value {back:{id:"show_settings",to:{type:"translatable",translate:"luigis_mansion:item.menu.game_boy_horror.show_settings"},update_global_variables:1b},options:[]}

function #luigis_mansion:selection_menu/game_boy_horror/show_settings/map
execute store result score #temp Time run data get storage luigis_mansion:data menu_options.options
scoreboard players operation #temp Time %= #6 Constants
execute if score #temp Time matches 1.. run data modify storage luigis_mansion:data menu_options.options append value {}
execute if score #temp Time matches 4..5 run data modify storage luigis_mansion:data menu_options.options append value {}
execute if score #temp Time matches 5 run data modify storage luigis_mansion:data menu_options.options append value {}
scoreboard players reset #temp Time
function #luigis_mansion:selection_menu/game_boy_horror/show_settings/map_global

function luigis_mansion:entities/player/selection_menu/load