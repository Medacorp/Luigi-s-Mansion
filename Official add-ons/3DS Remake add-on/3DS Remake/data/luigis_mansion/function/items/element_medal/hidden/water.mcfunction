data modify storage luigis_mansion:data current_state.current_data.obtained_items merge value {water_element_medal:1b}
data modify storage 3ds_remake:data current_state.trophy.easy.has_element_medals.water set value 1b
execute if data storage 3ds_remake:data current_state.trophy.easy.has_element_medals{fire:1b,water:1b,ice:1b} run function 3ds_remake:selection_menu/gallery_trophy/complete/easy/task_3
data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"water_element_medal"},progress:0}