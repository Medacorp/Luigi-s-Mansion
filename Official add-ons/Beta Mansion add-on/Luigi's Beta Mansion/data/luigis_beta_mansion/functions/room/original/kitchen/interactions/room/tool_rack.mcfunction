execute unless score #kitchen_tool_rack Search matches 1 run scoreboard players reset #kitchen_tool_rack Searching
scoreboard players reset #kitchen_tool_rack Search
execute if score #kitchen_tool_rack Searching matches 20 run function luigis_beta_mansion:room/original/kitchen/search/tool_rack
scoreboard players operation #temp Searching = #kitchen_tool_rack Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 699 15 85 run function luigis_mansion:blocks/search_sound/ceramic
scoreboard players reset #temp Searching