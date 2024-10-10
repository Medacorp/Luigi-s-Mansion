tellraw @s {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mansion","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.extra_gallery_door.1"}]}
tag @s add extra_gallery_door_menu
function luigis_mansion:entities/player/animation/set/think
data modify storage luigis_mansion:data menu_options set value {no_exit:1b,options:[{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:menu/exit","minecraft:unbreakable":{show_in_tooltip:0b},"minecraft:attribute_modifiers":{modifiers:[]},"minecraft:item_name":'{"type":"translatable","translate":"luigis_mansion:item.menu.extra_gallery_door.nowhere"}',"minecraft:custom_data":{option:{id:"exit"}}}}]}
function #luigis_mansion:selection_menu/extra_gallery_door/options

function luigis_mansion:entities/player/selection_menu/load