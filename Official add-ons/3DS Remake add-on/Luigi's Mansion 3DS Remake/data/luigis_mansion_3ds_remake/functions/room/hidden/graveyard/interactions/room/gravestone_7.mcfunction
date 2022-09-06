execute unless score #graveyard_gravestone_7 Search matches 1 run scoreboard players reset #graveyard_gravestone_7 Searching
scoreboard players reset #graveyard_gravestone_7 Search
execute if score #graveyard_gravestone_7 Searching matches 20 run function luigis_mansion_3ds_remake:room/hidden/graveyard/search/gravestone_7
scoreboard players operation #temp Searching = #graveyard_gravestone_7 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 656.0 103 43.0 run function luigis_mansion:blocks/search_sound/stone
scoreboard players reset #temp Searching