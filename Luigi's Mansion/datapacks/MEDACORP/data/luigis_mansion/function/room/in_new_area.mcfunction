$data modify storage luigis_mansion:data current_state.current_data.area set value $(area)
$scoreboard players set #area Time $(area)
function luigis_mansion:room/in_new_area_rooms with storage luigis_mansion:data current_state.current_data.mansion_id
scoreboard players reset #area Time