execute unless data storage luigis_mansion:data macro.namespace run data modify storage luigis_mansion:data macro.namespace set value "3ds_remake"
function luigis_mansion:entities/player/animation/set/idle
execute if entity @s[tag=close_selection_menu] run function 3ds_remake:selection_menu/gallery_trophy/exit