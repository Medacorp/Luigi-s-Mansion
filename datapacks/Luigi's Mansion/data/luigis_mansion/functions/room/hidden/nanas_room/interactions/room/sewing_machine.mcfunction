execute unless score #nanas_room_sewing_machine Search matches 1 run scoreboard players reset #nanas_room_sewing_machine Searching
scoreboard players reset #nanas_room_sewing_machine Search
execute if score #nanas_room_sewing_machine Searching matches 20 run function luigis_mansion:room/hidden/nanas_room/search/sewing_machine
scoreboard players operation #temp Searching = #nanas_room_sewing_machine Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 655 20 42.0 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching