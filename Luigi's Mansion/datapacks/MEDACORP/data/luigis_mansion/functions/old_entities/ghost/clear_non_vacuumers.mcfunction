data modify storage luigis_mansion:data ghost_list set from entity @s ArmorItems[3].tag.luigis_mansion.attacked_by
data modify storage luigis_mansion:data new_ghost_list set value []
function luigis_mansion:old_entities/ghost/clear_id
data modify entity @s ArmorItems[3].tag.luigis_mansion.attacked_by set from storage luigis_mansion:data new_ghost_list
data remove storage luigis_mansion:data ghost_list
data remove storage luigis_mansion:data new_ghost_list
scoreboard players reset #temp ID
tag @a remove processed