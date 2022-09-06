execute unless score #master_bedroom_chair Search matches 1 run scoreboard players reset #master_bedroom_chair Searching
scoreboard players reset #master_bedroom_chair Search
execute if score #master_bedroom_chair Searching matches 20 run function luigis_mansion:room/hidden/master_bedroom/search/boo_check/chair
scoreboard players operation #temp Searching = #master_bedroom_chair Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 690 111 -26 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching