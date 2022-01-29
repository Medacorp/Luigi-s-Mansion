fill 700 11 -69 700 11 -70 minecraft:stone_brick_slab[type=bottom]
execute positioned 700 11 -69.0 run function luigis_mansion:blocks/dust
execute unless score #kitchen_dish_washer Searched matches 1 positioned 701 11 -69.0 run function luigis_mansion:blocks/search_sound/open/oven
scoreboard players set #kitchen_dish_washer Searched 1
tag @e[x=700.5,y=11,z=-69.5,distance=..0.7,tag=hidden_boo,tag=caught_by_boo_radar] add spawn
tag @e[x=700.5,y=11,z=-69.5,distance=..0.7,tag=ghost,tag=hidden] add spawn
teleport @e[x=700.5,y=11,z=-69.5,distance=..0.7,tag=ghost,tag=hidden] 700 11 -69.0