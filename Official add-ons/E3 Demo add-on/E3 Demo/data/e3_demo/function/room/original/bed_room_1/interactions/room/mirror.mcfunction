execute unless score #bed_room_1_mirror Search matches 1 run scoreboard players reset #bed_room_1_mirror Searching
scoreboard players reset #bed_room_1_mirror Search
execute if score #bed_room_1_mirror Searching matches 20 run function e3_demo:room/original/bed_room_1/search/mirror
scoreboard players operation #temp Searching = #bed_room_1_mirror Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 689.0 112 40.0 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching