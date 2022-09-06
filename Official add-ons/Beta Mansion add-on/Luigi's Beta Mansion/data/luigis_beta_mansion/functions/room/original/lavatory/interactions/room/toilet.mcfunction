execute unless score #lavatory_toilet Search matches 1 run scoreboard players reset #lavatory_toilet Searching
scoreboard players reset #lavatory_toilet Search
execute if score #lavatory_toilet Searching matches 20 run function luigis_beta_mansion:room/original/lavatory/search/toilet
scoreboard players operation #temp Searching = #lavatory_toilet Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 664 11 44 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching
execute unless block 664 11 44 minecraft:dropper{LootTable:"luigis_mansion:search"} run function luigis_beta_mansion:room/original/lavatory/search/toilet