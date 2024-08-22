execute if score @s Room = #temp Room run tag @s add same_room
execute if score @s Room = #temp Room run tag @s add exact_same_room
execute if score #temp Room matches ..0 run function #luigis_mansion:main/get_same_room/lab_viewpoints
execute if score #temp Room matches 1.. run function luigis_mansion:main/get_same_room/viewpoints with storage luigis_mansion:data current_state.current_data.mansion_id