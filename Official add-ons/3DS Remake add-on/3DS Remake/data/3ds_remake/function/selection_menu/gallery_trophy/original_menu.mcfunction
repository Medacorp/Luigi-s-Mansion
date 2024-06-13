tellraw @s[tag=!gallery_trophy_menu] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mansion","color":"green"},{"type":"translatable","translate":"3ds_remake:message.gallery.trophy"}]}
tag @s add gallery_trophy_menu

data modify storage luigis_mansion:data menu_options set value {options:[]}
function #3ds_remake:selection_menu/gallery_trophy/collections

function luigis_mansion:entities/player/selection_menu/load