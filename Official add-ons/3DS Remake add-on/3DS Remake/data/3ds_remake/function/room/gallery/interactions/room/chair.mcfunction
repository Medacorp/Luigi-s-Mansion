execute unless score #gallery_chair Search matches 1 run scoreboard players reset #gallery_chair Searching
scoreboard players reset #gallery_chair Search
execute if score #gallery_chair Searching matches 20 run function 3ds_remake:room/gallery/search/chair
scoreboard players operation #temp Searching = #gallery_chair Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 737 2 -33 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching