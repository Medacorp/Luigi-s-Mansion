data modify storage luigis_mansion:data ghost_list set from entity @s data.attacked_by
function e3_demo:items/poltergust_500/remove_id
data modify entity @s data.attacked_by set from storage luigis_mansion:data new_ghost_list
scoreboard players reset #temp2 ID
data remove storage luigis_mansion:data ghost_list
data remove storage luigis_mansion:data new_ghost_list