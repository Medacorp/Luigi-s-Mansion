execute unless score #ceramics_studio_table Search matches 1 run scoreboard players reset #ceramics_studio_table Searching
scoreboard players reset #ceramics_studio_table Search
execute if score #ceramics_studio_table Searching matches 20 run function luigis_mansion_3ds_remake:room/hidden/ceramics_studio/search/boo_check/table
scoreboard players operation #temp Searching = #ceramics_studio_table Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 698 29 67.0 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching