execute unless score #telephone_room_chest_3 Search matches 1 run scoreboard players reset #telephone_room_chest_3 Searching
scoreboard players reset #telephone_room_chest_3 Search
execute if score #telephone_room_chest_3 Searching matches 20 run function luigis_mansion_3ds_remake:room/hidden/telephone_room/search/boo_check/chest_3
scoreboard players operation #temp Searching = #telephone_room_chest_3 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 754.0 29 4 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching
execute unless block 753 29 4 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion_3ds_remake:room/hidden/telephone_room/search/boo_check/chest_3
execute unless block 754 29 4 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion_3ds_remake:room/hidden/telephone_room/search/boo_check/chest_3