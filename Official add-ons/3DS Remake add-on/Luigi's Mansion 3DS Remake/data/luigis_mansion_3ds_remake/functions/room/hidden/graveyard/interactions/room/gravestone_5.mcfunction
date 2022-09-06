execute unless score #graveyard_gravestone_5 Search matches 1 run scoreboard players reset #graveyard_gravestone_5 Searching
scoreboard players reset #graveyard_gravestone_5 Search
execute if score #graveyard_gravestone_5 Searching matches 20 run function luigis_mansion_3ds_remake:room/hidden/graveyard/search/gravestone_5
scoreboard players operation #temp Searching = #graveyard_gravestone_5 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 660.0 103 45.0 run function luigis_mansion:blocks/search_sound/stone
scoreboard players reset #temp Searching