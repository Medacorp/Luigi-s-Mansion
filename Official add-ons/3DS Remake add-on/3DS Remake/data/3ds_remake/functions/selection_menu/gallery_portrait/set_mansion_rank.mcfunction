data modify storage 3ds_remake:data current_state.selected_portraits.mansion_rank set from storage luigis_mansion:data selected_option.value
execute if data storage luigis_mansion:data selected_option{value:0b} run data modify storage luigis_mansion:data selected_option.value set value "h_rank"
execute if data storage luigis_mansion:data selected_option{value:1b} run data modify storage luigis_mansion:data selected_option.value set value "g_rank"
execute if data storage luigis_mansion:data selected_option{value:2b} run data modify storage luigis_mansion:data selected_option.value set value "f_rank"
execute if data storage luigis_mansion:data selected_option{value:3b} run data modify storage luigis_mansion:data selected_option.value set value "e_rank"
execute if data storage luigis_mansion:data selected_option{value:4b} run data modify storage luigis_mansion:data selected_option.value set value "d_rank"
execute if data storage luigis_mansion:data selected_option{value:5b} run data modify storage luigis_mansion:data selected_option.value set value "c_rank"
execute if data storage luigis_mansion:data selected_option{value:6b} run data modify storage luigis_mansion:data selected_option.value set value "b_rank"
execute if data storage luigis_mansion:data selected_option{value:7b} run data modify storage luigis_mansion:data selected_option.value set value "a_rank"
execute if data storage luigis_mansion:data selected_option{value:8b} run data modify storage luigis_mansion:data selected_option.value set value "s_rank"
function 3ds_remake:selection_menu/gallery_portrait/update_portrait with storage luigis_mansion:data selected_option.value