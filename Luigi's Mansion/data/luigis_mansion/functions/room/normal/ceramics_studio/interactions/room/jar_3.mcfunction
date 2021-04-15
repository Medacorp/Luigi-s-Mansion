execute unless score #ceramics_studio_jar_3 Search matches 1 run scoreboard players reset #ceramics_studio_jar_3 Searching
scoreboard players reset #ceramics_studio_jar_3 Search
execute if score #ceramics_studio_jar_3 Searching matches 20 run function luigis_mansion:room/normal/ceramics_studio/search_jar_3
execute unless block 687 120 45 minecraft:hopper{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/normal/ceramics_studio/search_jar_3