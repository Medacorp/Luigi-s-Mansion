execute unless score #ceramics_studio_jar_1 Search matches 1 run scoreboard players reset #ceramics_studio_jar_1 Searching
scoreboard players reset #ceramics_studio_jar_1 Search
execute if score #ceramics_studio_jar_1 Searching matches 20 run function luigis_mansion:room/normal/ceramics_studio/search_jar_1
execute unless block 689 120 48 minecraft:hopper{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/normal/ceramics_studio/search_jar_1