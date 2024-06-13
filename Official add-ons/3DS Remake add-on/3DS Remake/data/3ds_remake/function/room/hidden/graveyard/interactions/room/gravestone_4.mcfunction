execute unless score #graveyard_gravestone_4 Search matches 1 run scoreboard players reset #graveyard_gravestone_4 Searching
scoreboard players reset #graveyard_gravestone_4 Search
execute if score #graveyard_gravestone_4 Searching matches 20 run function 3ds_remake:room/hidden/graveyard/search/gravestone_4
scoreboard players operation #temp Searching = #graveyard_gravestone_4 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 649 104 47 run function luigis_mansion:blocks/search_sound/stone
scoreboard players reset #temp Searching