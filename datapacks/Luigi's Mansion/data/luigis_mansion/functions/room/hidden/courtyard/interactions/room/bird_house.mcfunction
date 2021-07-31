execute unless score #courtyard_bird_house Search matches 1 run scoreboard players reset #courtyard_bird_house Searching
scoreboard players reset #courtyard_bird_house Search
execute if score #courtyard_bird_house Searching matches 20 run function luigis_mansion:room/hidden/courtyard/search_bird_house
execute unless block 647 103 27 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/courtyard/search_bird_house