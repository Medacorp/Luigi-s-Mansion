data modify storage luigis_mansion:data selected_option.uuid set from entity @s UUID
data modify storage luigis_mansion:data selected_option.portrait_ghost set from entity @s ArmorItems[3].tag.luigis_mansion.portrait_ghost
data modify storage luigis_mansion:data selected_option.portrait_battle_position set from entity @s ArmorItems[3].tag.luigis_mansion.portrait_battle_position
data modify storage luigis_mansion:data selected_option.portraits set from entity @s ArmorItems[3]
execute if data entity @s ArmorItems[3].tag.luigis_mansion.no_portrait_battles run data modify storage luigis_mansion:data selected_option.no_portrait_battles set value 1b

execute as @a[tag=searcher] run function 3ds_remake:selection_menu/gallery_portrait/portrait_ghost