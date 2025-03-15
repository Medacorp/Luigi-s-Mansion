function luigis_mansion:entities/player/camera/teleport {teleport:"~ ~ ~1"}
tag @s add spectator_menu
gamemode adventure @s

tellraw @s {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.mansion",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.extra_gallery_door.1"}]}
tag @s add extra_gallery_door_menu
data modify storage luigis_mansion:data menu_options set value {no_exit:1b,options:[{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:menu/exit","minecraft:unbreakable":{},"minecraft:tooltip_display":{hidden_components:["minecraft:unbreakable"]},"minecraft:attribute_modifiers":[],"minecraft:item_name":{type:"translatable",translate:"luigis_mansion:item.menu.extra_gallery_door.nowhere"},"minecraft:custom_data":{option:{id:"exit_spectator"}}}}]}
function #luigis_mansion:selection_menu/extra_gallery_door/options

execute if data storage luigis_mansion:data menu_options.options[0] run data modify storage luigis_mansion:data menu_options.options[{components:{"minecraft:custom_data":{option:{id:"go_through"}}}}].components."minecraft:custom_data".option.id set value "go_through_spectator"

function luigis_mansion:entities/player/selection_menu/load