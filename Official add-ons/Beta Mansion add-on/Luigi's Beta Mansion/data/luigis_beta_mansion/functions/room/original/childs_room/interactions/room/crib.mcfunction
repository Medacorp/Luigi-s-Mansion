execute unless score #childs_room_crib Search matches 1 run scoreboard players reset #childs_room_crib Searching
scoreboard players reset #childs_room_crib Search
execute if score #childs_room_crib Searching matches 20 run function luigis_beta_mansion:room/original/childs_room/search/crib
scoreboard players operation #temp Searching = #childs_room_crib Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 741.0 21 68.0 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching