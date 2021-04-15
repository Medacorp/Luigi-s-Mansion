execute unless score #ceramics_studio_frozen_jar Search matches 1 run scoreboard players reset #ceramics_studio_frozen_jar Searching
scoreboard players reset #ceramics_studio_frozen_jar Search
execute if score #ceramics_studio_frozen_jar Searching matches 20 run function luigis_mansion:room/hidden/ceramics_studio/search_frozen_jar
execute unless block 693 121 -21 minecraft:hopper{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/ceramics_studio/search_frozen_jar