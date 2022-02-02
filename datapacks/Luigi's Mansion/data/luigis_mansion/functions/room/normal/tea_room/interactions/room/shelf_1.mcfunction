execute unless score #tea_room_shelf_1 Search matches 1 run scoreboard players reset #tea_room_shelf_1 Searching
scoreboard players reset #tea_room_shelf_1 Search
execute if score #tea_room_shelf_1 Searching matches 20 run function luigis_mansion:room/normal/tea_room/search/boo_check/shelf_1
scoreboard players operation #temp Searching = #tea_room_shelf_1 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 643 22 -31 run function luigis_mansion:blocks/search_sound/ceramic
scoreboard players reset #temp Searching