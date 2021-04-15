execute unless score #tea_room_ice_bucket Search matches 1 run scoreboard players reset #tea_room_ice_bucket Searching
scoreboard players reset #tea_room_ice_bucket Search
execute if score #tea_room_ice_bucket Searching matches 20 run function luigis_mansion:room/normal/tea_room/search_ice_bucket
execute unless block 659 112 -28 minecraft:hopper{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/normal/tea_room/search_ice_bucket