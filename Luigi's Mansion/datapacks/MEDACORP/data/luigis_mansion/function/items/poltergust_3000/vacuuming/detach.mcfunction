data modify storage luigis_mansion:data ghost_list set from entity @s ArmorItems[3].components."minecraft:custom_data".attacked_by
function luigis_mansion:items/poltergust_3000/remove_id
data modify entity @s ArmorItems[3].components."minecraft:custom_data".attacked_by set from storage luigis_mansion:data new_ghost_list
scoreboard players reset #temp2 ID
data remove storage luigis_mansion:data ghost_list
data remove storage luigis_mansion:data new_ghost_list