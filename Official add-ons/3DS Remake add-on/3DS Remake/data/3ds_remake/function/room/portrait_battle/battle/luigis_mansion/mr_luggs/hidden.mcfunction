execute as @a run function luigis_mansion:entities/luigi/move/execute {execute:"in luigis_mansion:normal",teleport:"704 11 31 0 0"}
function luigis_mansion:items/poltergust_3000/fire_element
data modify storage luigis_mansion:data current_state.current_data.obtained_items merge value {fire_element_medal:1b}
data modify storage luigis_mansion:data current_state.current_data.money_spawned set value ["dining_room_china_cabinet_2","dining_room_gold_mouse"]