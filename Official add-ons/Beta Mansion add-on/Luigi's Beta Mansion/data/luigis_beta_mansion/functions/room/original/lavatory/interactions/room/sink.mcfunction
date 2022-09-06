execute unless score #lavatory_sink Search matches 1 run scoreboard players reset #lavatory_sink Searching
scoreboard players reset #lavatory_sink Search
execute if score #lavatory_sink Searching matches 20 run function luigis_beta_mansion:room/original/lavatory/search/sink
scoreboard players operation #temp Searching = #lavatory_sink Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 662 11 40 run function luigis_mansion:blocks/search_sound/stone
scoreboard players reset #temp Searching
execute unless block 662 11 40 minecraft:dropper{LootTable:"luigis_mansion:search"} run function luigis_beta_mansion:room/original/lavatory/search/sink