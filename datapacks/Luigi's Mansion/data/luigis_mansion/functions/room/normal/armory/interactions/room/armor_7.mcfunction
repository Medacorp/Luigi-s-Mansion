execute unless score #armory_armor_7 Search matches 1 run scoreboard players reset #armory_armor_7 Searching
scoreboard players reset #armory_armor_7 Search
execute if score #armory_armor_7 Searching matches 20 run function luigis_mansion:room/normal/armory/search/boo_check/armor_7
scoreboard players operation #temp Searching = #armory_armor_7 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 748 29 56 run function luigis_mansion:blocks/search_sound/metal
scoreboard players reset #temp Searching