execute unless score #tea_room_ice_bucket Search matches 1 run scoreboard players reset #tea_room_ice_bucket Searching
scoreboard players reset #tea_room_ice_bucket Search
execute if score #tea_room_ice_bucket Searching matches 20 run function 3ds_remake:room/hidden/tea_room/search/boo_check/ice_bucket
scoreboard players operation #temp Searching = #tea_room_ice_bucket Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 643 21 -48 run function luigis_mansion:blocks/search_sound/metal
scoreboard players reset #temp Searching
execute unless block 643 21 -48 minecraft:hopper{LootTable:"luigis_mansion:search"} run function 3ds_remake:room/hidden/tea_room/search/boo_check/ice_bucket