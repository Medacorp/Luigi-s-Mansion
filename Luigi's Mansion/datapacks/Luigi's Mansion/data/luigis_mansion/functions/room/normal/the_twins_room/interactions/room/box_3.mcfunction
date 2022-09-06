execute if block 738 20 40 minecraft:chest unless block 738 20 40 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/normal/the_twins_room/search/box_3
execute unless score #the_twins_room_box_3 Search matches 1 run scoreboard players reset #the_twins_room_box_3 Searching
scoreboard players reset #the_twins_room_box_3 Search
scoreboard players operation #temp Searching = #the_twins_room_box_3 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 738 20 40 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching