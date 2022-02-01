execute unless score #butlers_room_water_bucket Search matches 1 run scoreboard players reset #butlers_room_water_bucket Searching
scoreboard players reset #butlers_room_water_bucket Search
execute if score #butlers_room_water_bucket Searching matches 20 run function luigis_mansion:room/hidden/butlers_room/search/water_bucket
scoreboard players operation #temp Searching = #butlers_room_water_bucket Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 748 11 -39.0 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching
execute unless block 747 11 -40 minecraft:hopper{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/butlers_room/search/water_bucket