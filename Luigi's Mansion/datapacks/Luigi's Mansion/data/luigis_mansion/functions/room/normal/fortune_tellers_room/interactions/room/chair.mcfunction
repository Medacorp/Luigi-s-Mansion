execute unless score #fortune_tellers_room_chair Search matches 1 run scoreboard players reset #fortune_tellers_room_chair Searching
scoreboard players reset #fortune_tellers_room_chair Search
execute if score #fortune_tellers_room_chair Searching matches 20 run function luigis_mansion:room/normal/fortune_tellers_room/search/boo_check/chair
scoreboard players operation #temp Searching = #fortune_tellers_room_chair Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 739 11 -29 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching