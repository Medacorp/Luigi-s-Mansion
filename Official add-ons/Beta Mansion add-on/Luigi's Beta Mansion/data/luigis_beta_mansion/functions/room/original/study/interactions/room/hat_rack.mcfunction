execute unless score #study_hat_rack Search matches 1 run scoreboard players reset #study_hat_rack Searching
scoreboard players reset #study_hat_rack Search
execute if score #study_hat_rack Searching matches 20 run function luigis_beta_mansion:room/original/study/search/hat_rack
scoreboard players operation #temp Searching = #study_hat_rack Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 715 20 45 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching