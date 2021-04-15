execute unless score #kitchen_closet Search matches 1 run scoreboard players reset #kitchen_closet Searching
scoreboard players reset #kitchen_closet Search
execute if score #kitchen_closet Searching matches 20 run function luigis_mansion:room/hidden/kitchen/search_closet
execute unless block 687 103 -16 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/kitchen/search_closet
execute unless block 687 103 -14 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/kitchen/search_closet