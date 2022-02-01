execute unless score #parlor_couch Search matches 1 run scoreboard players reset #parlor_couch Searching
scoreboard players reset #parlor_couch Search
execute if score #parlor_couch Searching matches 20 run function luigis_mansion:room/hidden/parlor/search/couch
scoreboard players operation #temp Searching = #parlor_couch Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 721.0 20 -4 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching