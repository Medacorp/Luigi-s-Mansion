execute unless score #conservatory_closet Search matches 1 run scoreboard players reset #conservatory_closet Searching
scoreboard players reset #conservatory_closet Search
execute if score #conservatory_closet Searching matches 20 run function 3ds_remake:room/hidden/conservatory/search/boo_check/closet
scoreboard players operation #temp Searching = #conservatory_closet Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 654 12 -26.0 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching