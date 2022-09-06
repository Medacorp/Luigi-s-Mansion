execute unless score #butlers_room_bucket Search matches 1 run scoreboard players reset #butlers_room_bucket Searching
scoreboard players reset #butlers_room_bucket Search
execute if score #butlers_room_bucket Searching matches 20 run function luigis_mansion:room/normal/butlers_room/search/boo_check/bucket
scoreboard players operation #temp Searching = #butlers_room_bucket Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 749 11 71 run function luigis_mansion:blocks/search_sound/metal
scoreboard players reset #temp Searching
execute unless block 749 11 71 minecraft:hopper{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/normal/butlers_room/search/boo_check/bucket