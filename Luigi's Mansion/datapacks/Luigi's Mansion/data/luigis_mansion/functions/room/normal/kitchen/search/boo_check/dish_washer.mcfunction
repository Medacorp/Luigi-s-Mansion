execute if block 700 11 84 minecraft:stone_brick_stairs positioned 701 11 85.0 run function luigis_mansion:blocks/search_sound/open/oven
fill 700 11 84 700 11 85 minecraft:stone_brick_slab[type=bottom]
execute unless entity @e[x=700.5,y=11,z=85.5,distance=..0.7,tag=hidden_boo,tag=caught_by_boo_radar] run function luigis_mansion:room/normal/kitchen/search/dish_washer
tag @e[x=700.5,y=11,z=85.5,distance=..0.7,tag=hidden_boo,tag=caught_by_boo_radar] add spawn