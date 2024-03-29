execute at @s positioned ~ ~ ~1 run function luigis_mansion:entities/player/set_position
execute at @s run function luigis_mansion:entities/player/stop_model
gamemode adventure @s

tellraw @s {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mansion","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.extra_gallery_door.1"}]}
tag @s add extra_gallery_door_menu
data modify storage luigis_mansion:data menu_options set value {no_exit:1b,options:[{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Damage:22,Unbreakable:1b,CustomModelData:0,HideFlags:63,AttributeModifiers:[],display:{Name:'{"color":"white","italic":false,"type":"translatable","translate":"luigis_mansion:dialog.extra_gallery_door.nowhere"}'},luigis_mansion:{option:{id:"exit_spectator"}}}}]}
function #luigis_mansion:selection_menu/extra_gallery_door/options

data modify storage luigis_mansion:data menu_options.options[{tag:{luigis_mansion:{option:{id:"go_through"}}}}].tag.luigis_mansion.option.id set value "go_through_spectator"

function luigis_mansion:entities/player/selection_menu/load