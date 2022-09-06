execute unless score #boneyard_sign Search matches 1 run scoreboard players reset #boneyard_sign Searching
scoreboard players reset #boneyard_sign Search
execute if score #boneyard_sign Searching matches 20 run function luigis_mansion_3ds_remake:room/hidden/boneyard/search/sign
scoreboard players operation #temp Searching = #boneyard_sign Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 673 102 47 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching