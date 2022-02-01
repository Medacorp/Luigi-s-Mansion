execute unless score #armory_armor_5 Search matches 1 run scoreboard players reset #armory_armor_5 Searching
scoreboard players reset #armory_armor_5 Search
scoreboard players operation #temp Searching = #armory_armor_5 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 753 29 -46 run function luigis_mansion:blocks/search_sound/metal
scoreboard players reset #temp Searching