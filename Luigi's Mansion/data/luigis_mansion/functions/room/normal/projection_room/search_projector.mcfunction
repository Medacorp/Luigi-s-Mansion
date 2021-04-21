execute positioned 685 12 38 run function luigis_mansion:blocks/dust
scoreboard players set #projection_room_projector Searched 1
tag @e[x=685.5,y=12,z=38.5,distance=..0.7,tag=hidden_boo] add spawn
tag @e[x=685.5,y=12,z=38.5,distance=..0.7,tag=ghost_marker] add spawn
execute unless data storage luigis_mansion:data current_state.current_data.rooms.projection_room{cleared:1b} run setblock 686 12 38 minecraft:light[level=15,waterlogged=false]
execute if entity @a[tag=blackout] run setblock 686 12 38 minecraft:light[level=15,waterlogged=false]