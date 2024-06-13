execute if data storage luigis_mansion:data selected_option.portrait_ghost{namespace:"luigis_mansion"} run data modify storage luigis_mansion:data selected_option.portrait_ghost.namespace set value "3ds_remake"
function 3ds_remake:selection_menu/gallery_portrait/update_portrait_ghost_portrait with storage luigis_mansion:data selected_option.portrait_ghost
execute if data storage luigis_mansion:data selected_option{value:0b} run data modify storage luigis_mansion:data selected_option.value set value "bronze"
execute if data storage luigis_mansion:data selected_option{value:1b} run data modify storage luigis_mansion:data selected_option.value set value "silver"
execute if data storage luigis_mansion:data selected_option{value:2b} run data modify storage luigis_mansion:data selected_option.value set value "gold"
execute if data storage luigis_mansion:data selected_option{value:3b} run data modify storage luigis_mansion:data selected_option.value set value "platinum"
function 3ds_remake:selection_menu/gallery_portrait/update_portrait with storage luigis_mansion:data selected_option