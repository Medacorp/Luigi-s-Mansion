execute unless score #tea_room_tea_box Search matches 1 run scoreboard players reset #tea_room_tea_box Searching
scoreboard players reset #tea_room_tea_box Search
execute if score #tea_room_tea_box Searching matches 20 run function luigis_mansion:room/hidden/tea_room/search/tea_box
scoreboard players operation #temp Searching = #tea_room_tea_box Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 643 21 67 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching
execute unless block 643 21 67 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/tea_room/search/tea_box