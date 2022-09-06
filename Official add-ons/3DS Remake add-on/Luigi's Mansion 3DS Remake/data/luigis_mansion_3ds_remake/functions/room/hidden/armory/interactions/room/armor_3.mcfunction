execute unless score #armory_armor_3 Search matches 1 run scoreboard players reset #armory_armor_3 Searching
scoreboard players reset #armory_armor_3 Search
scoreboard players operation #temp Searching = #armory_armor_3 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 759 29 67 run function luigis_mansion:blocks/search_sound/metal
scoreboard players reset #temp Searching