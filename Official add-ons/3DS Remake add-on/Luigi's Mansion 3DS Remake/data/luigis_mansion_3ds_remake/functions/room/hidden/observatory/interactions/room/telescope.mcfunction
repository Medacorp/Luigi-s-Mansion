execute unless score #observatory_telescope Search matches 1 run scoreboard players reset #observatory_telescope Searching
scoreboard players reset #observatory_telescope Search
execute if score #observatory_telescope Searching matches 20 if block 645 24 -78 minecraft:redstone_lamp run function luigis_mansion_3ds_remake:room/hidden/observatory/search/telescope
scoreboard players operation #temp Searching = #observatory_telescope Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 if block 645 24 -78 minecraft:redstone_lamp positioned 643 20 -81 run function luigis_mansion:blocks/search_sound/stone
scoreboard players reset #temp Searching