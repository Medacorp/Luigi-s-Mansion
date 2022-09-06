execute unless score #lavatory_mirror Search matches 1 run scoreboard players reset #lavatory_mirror Searching
scoreboard players reset #lavatory_mirror Search
execute if score #lavatory_mirror Searching matches 20 run function luigis_beta_mansion:room/original/lavatory/search/mirror
scoreboard players operation #temp Searching = #lavatory_mirror Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 661 12 40 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching