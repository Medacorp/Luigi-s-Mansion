execute store result score #temp2 ID run data get storage luigis_mansion:data ghost_list[-1]
execute if score #temp ID = #temp2 ID run tag @s add already_included
data remove storage luigis_mansion:data ghost_list[-1]
execute if entity @s[tag=!already_included] if data storage luigis_mansion:data ghost_list[-1] run function luigis_beta_mansion:items/poltergust_500/search_my_id