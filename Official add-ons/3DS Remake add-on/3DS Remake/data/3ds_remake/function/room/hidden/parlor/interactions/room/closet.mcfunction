execute unless score #parlor_closet Search matches 1 run scoreboard players reset #parlor_closet Searching
scoreboard players reset #parlor_closet Search
execute if score #parlor_closet Searching matches 20 run function 3ds_remake:room/hidden/parlor/search/boo_check/closet
scoreboard players operation #temp Searching = #parlor_closet Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 714 21 34 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching