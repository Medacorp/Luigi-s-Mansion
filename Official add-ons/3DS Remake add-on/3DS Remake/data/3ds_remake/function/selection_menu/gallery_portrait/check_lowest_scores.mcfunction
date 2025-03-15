tag @s add gallery_portrait_menu

data modify storage luigis_mansion:data menu_options set value {back:{id:"mansion_rank",to:{type:"translatable",translate:"luigis_mansion:item.menu.original_menu"}},options:[]}
data modify storage luigis_mansion:data menu_options.back.uuid set from storage luigis_mansion:data selected_option.uuid
function #3ds_remake:selection_menu/gallery_portrait/check_lowest_scores

function luigis_mansion:entities/player/selection_menu/load