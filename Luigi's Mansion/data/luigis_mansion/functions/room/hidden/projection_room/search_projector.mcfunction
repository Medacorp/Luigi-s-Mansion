execute positioned 683 103 10 run function luigis_mansion:blocks/dust
scoreboard players set #projection_room_projector Searched 1
tag @e[x=683.5,y=103,z=10.5,distance=..0.7,tag=hidden_boo] add spawn
tag @e[x=683.5,y=103,z=10.5,distance=..0.7,tag=ghost_marker] add spawn
execute unless data storage luigis_mansion:data current_state.current_data.rooms.projection_room{cleared:1b} run setblock 684 103 10 minecraft:soul_torch
execute if entity @a[tag=blackout] run setblock 684 103 10 minecraft:soul_torch