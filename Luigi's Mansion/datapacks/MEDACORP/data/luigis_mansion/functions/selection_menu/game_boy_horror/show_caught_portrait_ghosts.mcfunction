tag @s add game_boy_horror_menu
playsound luigis_mansion:item.game_boy_horror.show_caught_portrait_ghosts player @s ~ ~ ~ 1

data modify storage luigis_mansion:data menu_options set value {back:{id:"original_menu",to:'{"translate":"luigis_mansion:item.menu.original_menu"}'},options:[]}
function #luigis_mansion:selection_menu/game_boy_horror/show_caught_portrait_ghosts

function luigis_mansion:entities/player/selection_menu/load