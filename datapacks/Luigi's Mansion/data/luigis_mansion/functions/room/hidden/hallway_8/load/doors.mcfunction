execute positioned 660 11 59 rotated -90 0 run function luigis_mansion:spawn_furniture/door/right/pull/mansion/1
execute positioned 660 11 59 rotated -90 0 run function luigis_mansion:spawn_furniture/door_frame/normal
execute positioned 663 11 52 rotated 0 0 run function luigis_mansion:spawn_furniture/door/left/push/mansion/1
execute positioned 663 11 52 rotated 0 0 run function luigis_mansion:spawn_furniture/door_frame/normal
tag @e[x=663.5,y=11,z=53.0,distance=..0.7,type=minecraft:villager,tag=door,limit=1] add hallway_5_hallway_8
execute positioned 660 20 59 rotated -90 0 run function luigis_mansion:spawn_furniture/door/right/pull/mansion/1
execute positioned 660 20 59 rotated -90 0 run function luigis_mansion:spawn_furniture/door_frame/normal
execute unless data storage luigis_mansion:data current_state.current_data.technical_data{extinguished_hallway_8_fire:1b} run tag @e[x=661.0,y=20,z=59.5,distance=..0.7,type=minecraft:villager,tag=door,limit=1] add burning
execute positioned 663 20 52 rotated 0 0 run function luigis_mansion:spawn_furniture/door/left/push/mansion/1
execute positioned 663 20 52 rotated 0 0 run function luigis_mansion:spawn_furniture/door_frame/normal