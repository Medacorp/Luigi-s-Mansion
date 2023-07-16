execute positioned 701 11 75.0 run function luigis_mansion:blocks/dust
fill 700 11 74 700 11 75 minecraft:stone_brick_slab[type=bottom]
execute unless score #kitchen_oven Searched matches 1.. positioned 701 11 75.0 run function luigis_mansion:blocks/search_sound/open/oven
scoreboard players set #kitchen_oven Searched 1