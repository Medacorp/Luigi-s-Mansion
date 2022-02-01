execute unless score #ceramics_studio_frozen_jar Search matches 1 run scoreboard players reset #ceramics_studio_frozen_jar Searching
scoreboard players reset #ceramics_studio_frozen_jar Search
execute if score #ceramics_studio_frozen_jar Searching matches 20 run function luigis_mansion:room/hidden/ceramics_studio/search/frozen_jar
scoreboard players operation #temp Searching = #ceramics_studio_frozen_jar Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 707 30 -46 run function luigis_mansion:blocks/search_sound/stone
scoreboard players reset #temp Searching
execute unless block 707 30 -46 minecraft:hopper{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/ceramics_studio/search/frozen_jar