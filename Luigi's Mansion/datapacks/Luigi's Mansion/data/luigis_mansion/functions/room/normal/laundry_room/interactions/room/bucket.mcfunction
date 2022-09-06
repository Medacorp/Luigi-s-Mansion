execute unless score #laundry_room_bucket Search matches 1 run scoreboard players reset #laundry_room_bucket Searching
scoreboard players reset #laundry_room_bucket Search
execute if score #laundry_room_bucket Searching matches 20 run function luigis_mansion:room/normal/laundry_room/search/boo_check/bucket
scoreboard players operation #temp Searching = #laundry_room_bucket Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 714 11 61 run function luigis_mansion:blocks/search_sound/metal
scoreboard players reset #temp Searching
execute unless block 714 11 61 minecraft:hopper{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/normal/laundry_room/search/boo_check/bucket