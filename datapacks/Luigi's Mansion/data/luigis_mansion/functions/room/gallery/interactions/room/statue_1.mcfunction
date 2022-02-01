execute unless score #gallery_statue_1 Search matches 1 run scoreboard players reset #gallery_statue_1 Searching
scoreboard players reset #gallery_statue_1 Search
execute if score #gallery_statue_1 Searching matches 20 run function luigis_mansion:room/gallery/search/statue_1
scoreboard players operation #temp Searching = #gallery_statue_1 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 771 78 -24 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching