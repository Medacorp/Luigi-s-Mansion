execute unless score #back_yard_bowl Search matches 1 run scoreboard players reset #back_yard_bowl Searching
scoreboard players reset #back_yard_bowl Search
execute if score #back_yard_bowl Searching matches 20 run function luigis_beta_mansion:room/original/back_yard/search/bowl
scoreboard players operation #temp Searching = #back_yard_bowl Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 676 102 51 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching