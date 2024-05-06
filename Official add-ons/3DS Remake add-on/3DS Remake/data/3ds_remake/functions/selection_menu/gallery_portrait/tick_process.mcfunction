execute unless data storage luigis_mansion:data macro.namespace run data modify storage luigis_mansion:data macro.namespace set value "3ds_remake"
function luigis_mansion:entities/player/animation/set/idle
effect clear @e[tag=model_piece] minecraft:glowing
execute as @a[tag=gallery_portrait_menu] if data entity @s SelectedItem.components."minecraft:custom_data".option.highlight_portrait_entity run function 3ds_remake:selection_menu/gallery_portrait/highlight_portrait_entity with entity @s SelectedItem.components."minecraft:custom_data".option.highlight_portrait_entity
execute if entity @s[tag=close_selection_menu] run function 3ds_remake:selection_menu/gallery_portrait/exit