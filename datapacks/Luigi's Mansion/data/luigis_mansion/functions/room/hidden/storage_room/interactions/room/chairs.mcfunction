execute unless score #storage_room_chairs Search matches 1 run scoreboard players reset #storage_room_chairs Searching
scoreboard players reset #storage_room_chairs Search
execute if score #storage_room_chairs Searching matches 20 run function luigis_mansion:room/hidden/storage_room/search/chairs
scoreboard players operation #temp Searching = #storage_room_chairs Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 681 11 78 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching