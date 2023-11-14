function #luigis_mansion:selection_menu/tick

data modify storage luigis_mansion:data macro set from storage luigis_mansion:data selected_option
execute unless data storage luigis_mansion:data macro.namespace run data modify storage luigis_mansion:data macro.namespace set value "luigis_mansion"

execute if data storage luigis_mansion:data selected_option.id unless data storage luigis_mansion:data selected_option.action run function #luigis_mansion:selection_menu/use_option with storage luigis_mansion:data macro
execute if data storage luigis_mansion:data selected_option.action run function #luigis_mansion:selection_menu/use_action with storage luigis_mansion:data macro

tellraw @s[tag=using_selection_menu,tag=!got_selection_menu_how_to] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:message.selection_menu_help"}]}
tag @s[tag=using_selection_menu] add got_selection_menu_how_to