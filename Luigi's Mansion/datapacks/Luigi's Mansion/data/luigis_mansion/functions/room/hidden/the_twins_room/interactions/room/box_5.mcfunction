execute if block 742 20 -19 minecraft:chest unless block 742 20 -19 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/the_twins_room/search/box_5
execute unless score #the_twins_room_box_5 Search matches 1 run scoreboard players reset #the_twins_room_box_5 Searching
scoreboard players reset #the_twins_room_box_5 Search
scoreboard players operation #temp Searching = #the_twins_room_box_5 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 742 20 -19 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching