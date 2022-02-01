execute unless score #parlor_chair Search matches 1 run scoreboard players reset #parlor_chair Searching
scoreboard players reset #parlor_chair Search
execute if score #parlor_chair Searching matches 20 run function luigis_mansion:room/hidden/parlor/search/chair
scoreboard players operation #temp Searching = #parlor_chair Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 719 20 -17 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching