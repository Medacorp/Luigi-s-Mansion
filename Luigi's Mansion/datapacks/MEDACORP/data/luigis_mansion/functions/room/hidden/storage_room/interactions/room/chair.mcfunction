execute unless score #storage_room_chair Search matches 1 run scoreboard players reset #storage_room_chair Searching
scoreboard players reset #storage_room_chair Search
execute if score #storage_room_chair Searching matches 20 run function luigis_mansion:room/hidden/storage_room/search/boo_check/chair
scoreboard players operation #temp Searching = #storage_room_chair Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 687 11 83 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching