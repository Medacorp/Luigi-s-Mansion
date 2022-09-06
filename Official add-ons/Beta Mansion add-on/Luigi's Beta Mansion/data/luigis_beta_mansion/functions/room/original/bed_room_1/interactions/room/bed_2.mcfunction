execute unless score #bed_room_1_bed_2 Search matches 1 run scoreboard players reset #bed_room_1_bed_2 Searching
scoreboard players reset #bed_room_1_bed_2 Search
execute if score #bed_room_1_bed_2 Searching matches 20 run function luigis_beta_mansion:room/original/bed_room_1/search/bed_2
scoreboard players operation #temp Searching = #bed_room_1_bed_2 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 687 112 45.0 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching