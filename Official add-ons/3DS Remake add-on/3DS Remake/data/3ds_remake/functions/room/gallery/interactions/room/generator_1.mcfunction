execute unless score #gallery_generator_1 Search matches 1 run scoreboard players reset #gallery_generator_1 Searching
scoreboard players reset #gallery_generator_1 Search
execute if score #gallery_generator_1 Searching matches 20 run function 3ds_remake:room/gallery/search/generator_1
scoreboard players operation #temp Searching = #gallery_generator_1 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 775 3 -19 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching