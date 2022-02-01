execute unless score #projection_room_speaker_1 Search matches 1 run scoreboard players reset #projection_room_speaker_1 Searching
scoreboard players reset #projection_room_speaker_1 Search
execute if score #projection_room_speaker_1 Searching matches 20 run function luigis_mansion:room/normal/projection_room/search/speaker_1
scoreboard players operation #temp Searching = #projection_room_speaker_1 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 676 12 43 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching