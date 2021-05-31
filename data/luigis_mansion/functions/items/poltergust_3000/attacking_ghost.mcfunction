data modify storage luigis_mansion:data ghost_list set from entity @s ArmorItems[3].tag.attacked_by
execute if data storage luigis_mansion:data ghost_list[-1] run function luigis_mansion:items/poltergust_3000/search_id
scoreboard players reset #temp2 ID
execute if entity @s[tag=being_vacuumed] run scoreboard players add #temp GhostCount 1