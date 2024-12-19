tag @s[tag=!debug_unlock_all_doors] add toggle_debug_unlock_all_doors
tag @s[tag=toggle_debug_unlock_all_doors] add debug_unlock_all_doors
tag @s[tag=!toggle_debug_unlock_all_doors,tag=debug_unlock_all_doors] remove debug_unlock_all_doors
tag @s[tag=toggle_debug_unlock_all_doors] remove toggle_debug_unlock_all_doors

function luigis_mansion:entities/player/memory/get with entity @s

data modify storage luigis_mansion:data menu_options set from storage luigis_mansion:data my_memory.selection_menu.current_options

execute if entity @s[tag=debug_unlock_all_doors] run data modify storage luigis_mansion:data menu_options.options[{components:{"minecraft:custom_data":{option:{id:"show_settings/toggle/debug/unlock_all_doors"}}}}] set value {id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:menu/game_boy_horror/show_settings/debug_on","minecraft:unbreakable":{show_in_tooltip:0b},"minecraft:attribute_modifiers":{modifiers:[]},"minecraft:item_name":'{"type":"translatable","translate":"luigis_mansion:item.menu.game_boy_horror.show_settings.value","with":[{"type":"translatable","translate":"luigis_mansion:item.menu.game_boy_horror.show_settings.debug_unlock_all_doors"},{"type":"translatable","translate":"luigis_mansion:item.menu.game_boy_horror.show_settings.value.on"}]}',"minecraft:custom_data":{option:{id:"show_settings/toggle/debug/unlock_all_doors"}}}}
execute if entity @s[tag=!debug_unlock_all_doors] run data modify storage luigis_mansion:data menu_options.options[{components:{"minecraft:custom_data":{option:{id:"show_settings/toggle/debug/unlock_all_doors"}}}}] set value {id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:menu/game_boy_horror/show_settings/debug_off","minecraft:unbreakable":{show_in_tooltip:0b},"minecraft:attribute_modifiers":{modifiers:[]},"minecraft:item_name":'{"type":"translatable","translate":"luigis_mansion:item.menu.game_boy_horror.show_settings.value","with":[{"type":"translatable","translate":"luigis_mansion:item.menu.game_boy_horror.show_settings.debug_unlock_all_doors"},{"type":"translatable","translate":"luigis_mansion:item.menu.game_boy_horror.show_settings.value.off"}]}',"minecraft:custom_data":{option:{id:"show_settings/toggle/debug/unlock_all_doors"}}}}

function luigis_mansion:entities/player/selection_menu/load