execute unless score #bed_room_1_closet Search matches 1 run scoreboard players reset #bed_room_1_closet Searching
scoreboard players reset #bed_room_1_closet Search
execute if score #bed_room_1_closet Searching matches 20 run function luigis_beta_mansion:room/original/bed_room_1/search/closet
scoreboard players operation #temp Searching = #bed_room_1_closet Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 686 112 54 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching