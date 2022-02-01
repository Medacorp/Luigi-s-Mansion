execute unless score #bathroom_1_shelf Search matches 1 run scoreboard players reset #bathroom_1_shelf Searching
scoreboard players reset #bathroom_1_shelf Search
execute if score #bathroom_1_shelf Searching matches 20 run function luigis_mansion:room/normal/bathroom_1/search/shelf
scoreboard players operation #temp Searching = #bathroom_1_shelf Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 657 15 27 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching