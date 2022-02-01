execute unless score #courtyard_statue_1 Search matches 1 run scoreboard players reset #courtyard_statue_1 Searching
scoreboard players reset #courtyard_statue_1 Search
execute if score #courtyard_statue_1 Searching matches 20 run function luigis_mansion:room/normal/courtyard/search/statue_1
scoreboard players operation #temp Searching = #courtyard_statue_1 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 648 104 25 run function luigis_mansion:blocks/search_sound/stone
scoreboard players reset #temp Searching