execute unless score #conservatory_closet Search matches 1 run scoreboard players reset #conservatory_closet Searching
scoreboard players reset #conservatory_closet Search
execute if score #conservatory_closet Searching matches 20 run function luigis_mansion:room/hidden/conservatory/search_closet
execute unless block 654 12 41 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/conservatory/search_closet
execute unless block 654 12 42 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/conservatory/search_closet