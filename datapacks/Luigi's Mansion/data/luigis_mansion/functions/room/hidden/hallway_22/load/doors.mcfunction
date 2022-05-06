execute positioned 685 2 33 rotated 90 0 run function luigis_mansion:spawn_furniture/door/left/push/mansion/metal
execute positioned 654 2 33 rotated -90 0 run function luigis_mansion:spawn_furniture/door/right/pull/spade
tag @e[x=655.0,y=2,z=33.5,distance=..0.7,type=minecraft:villager,tag=door,limit=1] add hallway_22_secret_altar
execute unless data storage luigis_mansion:data current_state.current_data.technical_data{cleared_king_boo_blockade:1b} run tag @e[x=655.0,y=2,z=33.5,distance=..0.7,type=minecraft:villager,tag=door,limit=1] add area_blockade