execute positioned 682 120 -13 rotated 90 0 run function luigis_mansion:spawn_furniture/door/right/push/mansion/wooden
execute positioned 682 120 -13 rotated 90 0 run function luigis_mansion:spawn_furniture/door_frame/planks
tag @e[x=682.0,y=120,z=-12.5,distance=..0.7,type=minecraft:villager,tag=door,limit=1] add hallway_17_balcony_2
execute positioned 682 120 28 rotated 90 0 run function luigis_mansion:spawn_furniture/door/right/pull/diamond
execute positioned 682 120 28 rotated 90 0 run function luigis_mansion:spawn_furniture/door_frame/planks
tag @e[x=682.0,y=120,z=28.5,distance=..0.7,type=minecraft:villager,tag=door,limit=1] add balcony_2_hallway_18
execute unless data storage luigis_mansion:data current_state.current_data.technical_data{cleared_area_4_blockade:1b} run tag @e[x=682.0,y=120,z=28.5,distance=..0.7,type=minecraft:villager,tag=door,limit=1] add area_blockade