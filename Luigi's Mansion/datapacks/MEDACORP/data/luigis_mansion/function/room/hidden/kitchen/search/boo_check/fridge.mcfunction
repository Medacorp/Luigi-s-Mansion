execute if block 701 11 -54 minecraft:iron_block run data modify storage luigis_mansion:data damage set value {method:{namespace:"luigis_mansion",id:"swinging_door"},amount:10,animation:{namespace:"luigis_mansion",id:"knockback/large"},no_delete:1b}
execute if block 701 11 -54 minecraft:iron_block as @e[tag=luigi,x=702.5,y=11,z=-54.0,distance=..2] positioned 701 11 -54.0 run function luigis_mansion:entities/player/damage
execute if block 701 11 -54 minecraft:iron_block run data remove storage luigis_mansion:data damage
execute if block 701 11 -54 minecraft:iron_block run place template luigis_mansion:kitchen/fridge_open 699 11 -52 none left_right
execute unless entity @e[x=701.5,y=11,z=-54.5,distance=..0.7,tag=hidden_boo,tag=caught_by_boo_radar] run function luigis_mansion:room/hidden/kitchen/search/fridge
tag @e[x=701.5,y=11,z=-54.5,distance=..0.7,tag=hidden_boo,tag=caught_by_boo_radar] add spawn
