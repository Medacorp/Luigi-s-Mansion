execute unless score #back_yard_stake Search matches 1 run scoreboard players reset #back_yard_stake Searching
scoreboard players reset #back_yard_stake Search
execute if score #back_yard_stake Searching matches 20 run function luigis_beta_mansion:room/original/back_yard/search/stake
scoreboard players operation #temp Searching = #back_yard_stake Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 673 102 47 run function luigis_mansion:blocks/search_sound/stone
scoreboard players reset #temp Searching