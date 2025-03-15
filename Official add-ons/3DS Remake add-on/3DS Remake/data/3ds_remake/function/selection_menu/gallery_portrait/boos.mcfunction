tellraw @s[tag=!gallery_portrait_menu] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.mansion",color:"green"},{type:"translatable",translate:"3ds_remake:message.gallery.boos"}]}
tag @s add gallery_portrait_menu

data modify storage luigis_mansion:data menu_options set value {options:[]}
function #3ds_remake:selection_menu/gallery_portrait/boos

function luigis_mansion:entities/player/selection_menu/load