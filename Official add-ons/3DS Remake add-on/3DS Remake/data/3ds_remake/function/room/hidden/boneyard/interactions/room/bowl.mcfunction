execute unless score #boneyard_bowl Search matches 1 run scoreboard players reset #boneyard_bowl Searching
scoreboard players reset #boneyard_bowl Search
execute if score #boneyard_bowl Searching matches 20 run function 3ds_remake:room/hidden/boneyard/search/bowl
scoreboard players operation #temp Searching = #boneyard_bowl Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 676 102 51 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching