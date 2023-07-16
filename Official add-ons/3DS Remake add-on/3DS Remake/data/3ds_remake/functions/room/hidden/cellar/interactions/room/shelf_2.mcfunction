execute unless score #cellar_shelf_content_old_junk_1 Search matches 1 run scoreboard players reset #cellar_shelf_content_old_junk_1 Searching
scoreboard players reset #cellar_shelf_content_old_junk_1 Search
execute if score #cellar_shelf_content_old_junk_1 Searching matches 20 run function 3ds_remake:room/hidden/cellar/search/boo_check/shelf_2
scoreboard players operation #temp Searching = #cellar_shelf_content_old_junk_1 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 742 5 -52 run function luigis_mansion:blocks/search_sound/metal
scoreboard players reset #temp Searching