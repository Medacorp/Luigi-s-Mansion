execute unless score #graveyard_gravestone_2 Search matches 1 run scoreboard players reset #graveyard_gravestone_2 Searching
scoreboard players reset #graveyard_gravestone_2 Search
execute if score #graveyard_gravestone_2 Searching matches 20 run function luigis_mansion:room/normal/graveyard/search/gravestone_2
scoreboard players operation #temp Searching = #graveyard_gravestone_2 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 659.0 103 50.0 run function luigis_mansion:blocks/search_sound/stone
scoreboard players reset #temp Searching