execute unless score #living_room_painting_3 Search matches 1 run scoreboard players reset #living_room_painting_3 Searching
scoreboard players reset #living_room_painting_3 Search
execute if score #living_room_painting_3 Searching matches 20 run function luigis_beta_mansion:room/original/living_room/search/painting_3
scoreboard players operation #temp Searching = #living_room_painting_3 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 727 22 33 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching