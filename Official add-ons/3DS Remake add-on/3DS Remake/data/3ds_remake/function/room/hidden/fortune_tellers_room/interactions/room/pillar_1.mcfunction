execute unless score #fortune_tellers_room_pillar_1 Search matches 1 run scoreboard players reset #fortune_tellers_room_pillar_1 Searching
scoreboard players reset #fortune_tellers_room_pillar_1 Search
execute if score #fortune_tellers_room_pillar_1 Searching matches 20 run function 3ds_remake:room/hidden/fortune_tellers_room/search/boo_check/pillar_1
scoreboard players operation #temp Searching = #fortune_tellers_room_pillar_1 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 744 11 -24 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching