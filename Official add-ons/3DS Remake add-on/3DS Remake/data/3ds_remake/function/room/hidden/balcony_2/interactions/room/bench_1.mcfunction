execute unless score #balcony_2_bench_1 Search matches 1 run scoreboard players reset #balcony_2_bench_1 Searching
scoreboard players reset #balcony_2_bench_1 Search
execute if score #balcony_2_bench_1 Searching matches 20 run function 3ds_remake:room/hidden/balcony_2/search/bench_1
scoreboard players operation #temp Searching = #balcony_2_bench_1 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 655 120 29 run function luigis_mansion:blocks/search_sound/metal
scoreboard players reset #temp Searching