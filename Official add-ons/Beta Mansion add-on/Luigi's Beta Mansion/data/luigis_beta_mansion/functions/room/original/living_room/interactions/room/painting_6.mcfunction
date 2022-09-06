execute unless score #living_room_painting_6 Search matches 1 run scoreboard players reset #living_room_painting_6 Searching
scoreboard players reset #living_room_painting_6 Search
execute if score #living_room_painting_6 Searching matches 20 run function luigis_beta_mansion:room/original/living_room/search/painting_6
scoreboard players operation #temp Searching = #living_room_painting_6 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 717.0 21 19 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching