execute unless score #ceramics_studio_box_1 Search matches 1 run scoreboard players reset #ceramics_studio_box_1 Searching
scoreboard players reset #ceramics_studio_box_1 Search
execute if score #ceramics_studio_box_1 Searching matches 20 run function luigis_mansion:room/hidden/ceramics_studio/search/boo_check/box_1
scoreboard players operation #temp Searching = #ceramics_studio_box_1 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 710 29 -63 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching