execute unless score #sitting_room_chair Search matches 1 run scoreboard players reset #sitting_room_chair Searching
scoreboard players reset #sitting_room_chair Search
execute if score #sitting_room_chair Searching matches 20 run function luigis_mansion:room/hidden/sitting_room/search/boo_check/chair
scoreboard players operation #temp Searching = #sitting_room_chair Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 742.0 20 39 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching