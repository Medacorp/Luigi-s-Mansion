execute unless score #storage_room_bucket Search matches 1 run scoreboard players reset #storage_room_bucket Searching
scoreboard players reset #storage_room_bucket Search
execute if score #storage_room_bucket Searching matches 20 run function luigis_mansion:room/normal/storage_room/search/bucket
scoreboard players operation #temp Searching = #storage_room_bucket Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 681 11 -55 run function luigis_mansion:blocks/search_sound/metal
scoreboard players reset #temp Searching
execute unless block 681 11 -55 minecraft:hopper{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/normal/storage_room/search/bucket