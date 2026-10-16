execute if data storage luigis_mansion:data macro{gallery_trophy:1b} unless data storage luigis_mansion:data macro{id:"reload"} run data modify storage luigis_mansion:data macro.trophy_id set from storage luigis_mansion:data macro.id
execute if data storage luigis_mansion:data macro{gallery_trophy:1b} run data modify storage luigis_mansion:data macro.trophy_namespace set from storage luigis_mansion:data macro.namespace
execute if data storage luigis_mansion:data macro{gallery_trophy:1b} unless data storage luigis_mansion:data macro.trophy_namespace run data modify storage luigis_mansion:data macro.trophy_namespace set value "3ds_remake"
execute if data storage luigis_mansion:data macro{gallery_trophy:1b} if data storage luigis_mansion:data macro.action run data modify storage luigis_mansion:data macro.trophy_action set from storage luigis_mansion:data macro.action
execute if data storage luigis_mansion:data macro.trophy_id run data modify storage luigis_mansion:data macro.id set value "gallery_trophy"
execute if data storage luigis_mansion:data macro.trophy_action run data modify storage luigis_mansion:data macro.action set value "gallery_trophy_action"
execute if data storage luigis_mansion:data macro{gallery_trophy:1b} run data modify storage luigis_mansion:data macro.namespace set value "3ds_remake"
execute unless data storage luigis_mansion:data macro.namespace run data modify storage luigis_mansion:data macro.namespace set value "luigis_mansion"
execute if entity @s[tag=looking_at_map] run function luigis_mansion:selection_menu/game_boy_horror/tick_map
execute if entity @s[tag=!looking_at_map] run function luigis_mansion:selection_menu/game_boy_horror/tick_no_map