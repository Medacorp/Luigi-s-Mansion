execute unless score #bed_room_1_chair Search matches 1 run scoreboard players reset #bed_room_1_chair Searching
scoreboard players reset #bed_room_1_chair Search
execute if score #bed_room_1_chair Searching matches 20 run function luigis_beta_mansion:room/original/bed_room_1/search/chair
scoreboard players operation #temp Searching = #bed_room_1_chair Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 690 111 41 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching