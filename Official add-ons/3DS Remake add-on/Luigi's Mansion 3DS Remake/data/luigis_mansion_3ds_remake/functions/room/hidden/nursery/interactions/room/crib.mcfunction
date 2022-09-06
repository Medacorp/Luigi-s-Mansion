execute unless score #nursery_crib Search matches 1 run scoreboard players reset #nursery_crib Searching
scoreboard players reset #nursery_crib Search
execute if score #nursery_crib Searching matches 20 run function luigis_mansion_3ds_remake:room/hidden/nursery/search/boo_check/crib
scoreboard players operation #temp Searching = #nursery_crib Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 741.0 21 68.0 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching