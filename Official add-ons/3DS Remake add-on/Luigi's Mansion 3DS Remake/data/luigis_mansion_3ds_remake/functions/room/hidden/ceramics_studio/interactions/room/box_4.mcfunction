execute unless score #ceramics_studio_box_4 Search matches 1 run scoreboard players reset #ceramics_studio_box_4 Searching
scoreboard players reset #ceramics_studio_box_4 Search
execute if score #ceramics_studio_box_4 Searching matches 20 run function luigis_mansion_3ds_remake:room/hidden/ceramics_studio/search/boo_check/box_4
scoreboard players operation #temp Searching = #ceramics_studio_box_4 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 698 30 65 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching