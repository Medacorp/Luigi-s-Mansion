execute unless score #bathroom_2_ice_bucket Search matches 1 run scoreboard players reset #bathroom_2_ice_bucket Searching
scoreboard players reset #bathroom_2_ice_bucket Search
scoreboard players operation #temp Searching = #bathroom_2_ice_bucket Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if entity @a[tag=portrait_battle,limit=1] if score #temp Searching matches 1 positioned 658 20 17 run function luigis_mansion:blocks/search_sound/metal
scoreboard players reset #temp Searching