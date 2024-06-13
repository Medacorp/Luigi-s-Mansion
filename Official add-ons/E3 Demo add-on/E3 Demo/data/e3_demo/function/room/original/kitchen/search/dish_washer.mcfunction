fill 700 11 84 700 11 85 minecraft:stone_brick_slab[type=bottom]
execute positioned 700 11 85.0 run function luigis_mansion:blocks/dust
execute unless score #kitchen_dish_washer Searched matches 1 positioned 701 11 85.0 run function luigis_mansion:blocks/search_sound/open/oven
scoreboard players set #kitchen_dish_washer Searched 1
tag @e[x=700.5,y=11,z=85.5,distance=..0.7,tag=ghost,tag=hidden] add spawn
teleport @e[x=700.5,y=11,z=85.5,distance=..0.7,tag=ghost,tag=hidden] 700 11 85.0