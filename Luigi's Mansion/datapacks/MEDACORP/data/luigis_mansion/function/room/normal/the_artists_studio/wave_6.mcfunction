data modify storage luigis_mansion:data entity set value {room:71,spawn:3b,tags:["ghost_art_spawn"]}
execute positioned 692.8 29 -66.9 run function luigis_mansion:spawn_entities/ghost/ghost_guy/red
data modify storage luigis_mansion:data entity set value {room:71,spawn:3b,tags:["ghost_art_spawn"]}
execute positioned 692.8 29 -66.9 rotated -80 0 positioned ^0.7 ^ ^0.7 run function luigis_mansion:spawn_entities/ghost/ghost_guy/red
data modify storage luigis_mansion:data entity set value {room:71,spawn:3b,tags:["ghost_art_spawn"]}
execute positioned 692.8 29 -66.9 rotated -80 0 positioned ^-0.7 ^ ^0.7 run function luigis_mansion:spawn_entities/ghost/ghost_guy/red
scoreboard players set #the_artists_studio Wave 6
execute if data storage luigis_mansion:data current_state.current_data.technical_data{garbage_can_ghost_easel:1b} run function luigis_mansion:room/normal/the_artists_studio/wave_7