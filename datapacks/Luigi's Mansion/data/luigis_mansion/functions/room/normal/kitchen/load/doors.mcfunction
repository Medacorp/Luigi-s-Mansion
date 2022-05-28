execute positioned 705 11 62 rotated 0 0 run function luigis_mansion:spawn_furniture/door/left/pull/mansion/4
execute positioned 705 11 62 rotated 0 0 run function luigis_mansion:spawn_furniture/door_frame/double_arched
execute positioned 704 11 62 rotated 0 0 run function luigis_mansion:spawn_furniture/door/right/push/mansion/4
execute positioned 704 11 62 rotated 0 0 run function luigis_mansion:spawn_furniture/door_frame/double_arched
execute positioned 698 11 88 rotated -90 0 run function luigis_mansion:spawn_furniture/door/left/pull/mansion/2
execute positioned 698 11 88 rotated -90 0 run function luigis_mansion:spawn_furniture/door_frame/marble
execute unless data storage luigis_mansion:data current_state.current_data.technical_data{extinguished_kitchen_fire:1b} run tag @e[x=699.0,y=11,z=88.5,distance=..0.7,type=minecraft:villager,tag=door,limit=1] add burning