execute unless score #telephone_room_chest_2 Search matches 1 run scoreboard players reset #telephone_room_chest_2 Searching
scoreboard players reset #telephone_room_chest_2 Search
execute if score #telephone_room_chest_2 Searching matches 20 run function luigis_mansion:room/hidden/telephone_room/search/boo_check/chest_2
scoreboard players operation #temp Searching = #telephone_room_chest_2 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 751.0 29 12 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching
execute unless block 750 29 12 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/telephone_room/search/boo_check/chest_2
execute unless block 751 29 12 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/telephone_room/search/boo_check/chest_2