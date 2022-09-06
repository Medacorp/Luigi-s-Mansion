execute unless score #observatory_chair Search matches 1 run scoreboard players reset #observatory_chair Searching
scoreboard players reset #observatory_chair Search
execute if score #observatory_chair Searching matches 20 run function luigis_mansion_3ds_remake:room/hidden/observatory/search/chair
scoreboard players operation #temp Searching = #observatory_chair Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 641 20 -78 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching