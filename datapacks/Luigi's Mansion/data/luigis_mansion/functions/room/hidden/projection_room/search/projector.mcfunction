execute positioned 685 12 -23 run function luigis_mansion:blocks/dust
scoreboard players set #projection_room_projector Searched 1
tag @e[x=685.5,y=12,z=-22.5,distance=..0.7,tag=hidden_boo,tag=caught_by_boo_radar] add spawn
tag @e[x=685.5,y=12,z=-22.5,distance=..0.7,tag=ghost,tag=hidden] add spawn
execute unless data storage luigis_mansion:data current_state.current_data.rooms.projection_room{cleared:1b} run setblock 686 12 -23 minecraft:light[level=15,waterlogged=false]
execute if data storage luigis_mansion:data current_state.current_data{blackout:1b} run setblock 686 12 -23 minecraft:light[level=15,waterlogged=false]