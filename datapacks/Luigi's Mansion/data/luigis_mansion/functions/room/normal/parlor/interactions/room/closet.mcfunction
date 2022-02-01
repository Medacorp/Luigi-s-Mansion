execute unless score #parlor_closet Search matches 1 run scoreboard players reset #parlor_closet Searching
scoreboard players reset #parlor_closet Search
execute if score #parlor_closet Searching matches 20 run function luigis_mansion:room/normal/parlor/search/closet
scoreboard players operation #temp Searching = #parlor_closet Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 714 21 34 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching
execute unless block 714 21 35 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/normal/parlor/search/closet
execute unless block 714 21 33 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/normal/parlor/search/closet