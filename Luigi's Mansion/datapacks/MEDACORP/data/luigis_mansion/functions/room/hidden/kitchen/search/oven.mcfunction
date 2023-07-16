fill 700 11 -59 700 11 -60 minecraft:stone_brick_slab[type=bottom]
execute unless score #kitchen_oven Searched matches 1.. positioned 701 11 -59.0 run function luigis_mansion:blocks/search_sound/open/oven
execute unless score #kitchen_oven Searched matches 1.. run scoreboard players set #kitchen_oven Searched 1