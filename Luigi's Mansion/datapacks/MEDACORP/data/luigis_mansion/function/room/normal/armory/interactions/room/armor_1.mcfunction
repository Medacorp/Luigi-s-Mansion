execute unless score #armory_armor_1 Search matches 1 run scoreboard players reset #armory_armor_1 Searching
scoreboard players reset #armory_armor_1 Search
scoreboard players operation #temp Searching = #armory_armor_1 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 757 29 72 run function luigis_mansion:blocks/search_sound/metal
scoreboard players reset #temp Searching