execute unless score #graveyard_gravestone_1 Search matches 1 run scoreboard players reset #graveyard_gravestone_1 Searching
scoreboard players reset #graveyard_gravestone_1 Search
execute if score #graveyard_gravestone_1 Searching matches 20 run function luigis_mansion:room/hidden/graveyard/search/gravestone_1
scoreboard players operation #temp Searching = #graveyard_gravestone_1 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 655.0 103 -37.0 run function luigis_mansion:blocks/search_sound/stone
scoreboard players reset #temp Searching