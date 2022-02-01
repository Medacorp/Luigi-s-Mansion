execute unless score #courtyard_bird_house Search matches 1 run scoreboard players reset #courtyard_bird_house Searching
scoreboard players reset #courtyard_bird_house Search
execute if score #courtyard_bird_house Searching matches 20 run function luigis_mansion:room/hidden/courtyard/search/bird_house
scoreboard players operation #temp Searching = #courtyard_bird_house Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 647 103 27 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching
execute unless block 647 103 27 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/courtyard/search/bird_house