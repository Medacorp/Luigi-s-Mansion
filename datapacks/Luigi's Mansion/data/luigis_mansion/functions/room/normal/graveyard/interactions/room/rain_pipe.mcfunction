execute unless score #graveyard_rain_pipe Search matches 1 run scoreboard players reset #graveyard_rain_pipe Searching
scoreboard players reset #graveyard_rain_pipe Search
execute if score #graveyard_rain_pipe Searching matches 20 run function luigis_mansion:room/normal/graveyard/search/rain_pipe
scoreboard players operation #temp Searching = #graveyard_rain_pipe Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 669 103 40 run function luigis_mansion:blocks/search_sound/metal
scoreboard players reset #temp Searching