execute unless score #ceramics_studio_jar_2 Search matches 1 run scoreboard players reset #ceramics_studio_jar_2 Searching
scoreboard players reset #ceramics_studio_jar_2 Search
execute if score #ceramics_studio_jar_2 Searching matches 20 run function luigis_mansion:room/normal/ceramics_studio/search_jar_2
execute unless block 695 120 48 minecraft:hopper{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/normal/ceramics_studio/search_jar_2