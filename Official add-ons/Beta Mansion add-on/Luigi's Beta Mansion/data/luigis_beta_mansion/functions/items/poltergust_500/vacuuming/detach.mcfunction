data modify storage luigis_mansion:data ghost_list set from entity @s ArmorItems[3].tag.attacked_by
scoreboard players operation #temp ID = @a[tag=me,limit=1] ID
function luigis_beta_mansion:items/poltergust_500/remove_id
data modify entity @s ArmorItems[3].tag.attacked_by set from storage luigis_mansion:data new_ghost_list
scoreboard players reset #temp ID
scoreboard players reset #temp2 ID
data remove storage luigis_mansion:data ghost_list
data remove storage luigis_mansion:data new_ghost_list