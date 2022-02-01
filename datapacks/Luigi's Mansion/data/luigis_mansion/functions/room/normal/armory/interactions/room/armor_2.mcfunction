execute unless score #armory_armor_2 Search matches 1 run scoreboard players reset #armory_armor_2 Searching
scoreboard players reset #armory_armor_2 Search
execute if score #armory_armor_2 Searching matches 20 run function luigis_mansion:room/normal/armory/search/armor_2
scoreboard players operation #temp Searching = #armory_armor_2 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 753 29 70 run function luigis_mansion:blocks/search_sound/metal
scoreboard players reset #temp Searching