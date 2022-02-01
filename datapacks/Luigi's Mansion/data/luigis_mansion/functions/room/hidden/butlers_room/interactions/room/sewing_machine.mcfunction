execute unless score #butlers_room_sewing_machine Search matches 1 run scoreboard players reset #butlers_room_sewing_machine Searching
scoreboard players reset #butlers_room_sewing_machine Search
execute if score #butlers_room_sewing_machine Searching matches 20 run function luigis_mansion:room/hidden/butlers_room/search/sewing_machine
scoreboard players operation #temp Searching = #butlers_room_sewing_machine Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 749 11 -45.0 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching