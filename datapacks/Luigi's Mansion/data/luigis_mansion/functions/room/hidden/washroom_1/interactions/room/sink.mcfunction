execute unless score #washroom_1_sink Search matches 1 run scoreboard players reset #washroom_1_sink Searching
scoreboard players reset #washroom_1_sink Search
execute if score #washroom_1_sink Searching matches 20 run function luigis_mansion:room/hidden/washroom_1/search/sink
scoreboard players operation #temp Searching = #washroom_1_sink Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 662 11 -25 run function luigis_mansion:blocks/search_sound/stone
scoreboard players reset #temp Searching
execute unless block 662 11 -25 minecraft:dropper{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/washroom_1/search/sink