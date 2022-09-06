execute if block 747 20 -28 minecraft:chest unless block 747 20 -28 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/the_twins_room/search/box_2
execute unless score #the_twins_room_box_2 Search matches 1 run scoreboard players reset #the_twins_room_box_2 Searching
scoreboard players reset #the_twins_room_box_2 Search
scoreboard players operation #temp Searching = #the_twins_room_box_2 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 747 20 -28 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching