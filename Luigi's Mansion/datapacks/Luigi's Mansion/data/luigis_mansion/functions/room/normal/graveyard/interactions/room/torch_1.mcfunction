execute unless score #graveyard_torch_1 Search matches 1 run scoreboard players reset #graveyard_torch_1 Searching
scoreboard players reset #graveyard_torch_1 Search
execute if score #graveyard_torch_1 Searching matches 20 run function luigis_mansion:room/normal/graveyard/search/torch_1
scoreboard players operation #temp Searching = #graveyard_torch_1 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 652 102 52 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching