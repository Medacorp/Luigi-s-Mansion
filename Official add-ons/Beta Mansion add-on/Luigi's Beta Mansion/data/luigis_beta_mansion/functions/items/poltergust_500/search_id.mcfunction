execute store result score #temp2 ID run data get storage luigis_mansion:data ghost_list[-1]
execute if score #temp ID = #temp2 ID run tag @s add being_vacuumed
data remove storage luigis_mansion:data ghost_list[-1]
execute if entity @s[tag=!being_vacuumed] if data storage luigis_mansion:data ghost_list[-1] run function luigis_beta_mansion:items/poltergust_500/search_id