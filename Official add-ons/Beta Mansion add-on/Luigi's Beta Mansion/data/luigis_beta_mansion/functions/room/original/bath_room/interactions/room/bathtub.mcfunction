execute unless score #bath_room_bathtub Search matches 1 run scoreboard players reset #bath_room_bathtub Searching
scoreboard players reset #bath_room_bathtub Search
execute if score #bath_room_bathtub Searching matches 20 run function luigis_beta_mansion:room/original/bath_room/search/bathtub
scoreboard players operation #temp Searching = #bath_room_bathtub Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 651 11 24.0 run function luigis_mansion:blocks/search_sound/stone
scoreboard players reset #temp Searching