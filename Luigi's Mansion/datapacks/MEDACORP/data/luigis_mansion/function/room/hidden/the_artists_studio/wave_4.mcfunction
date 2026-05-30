data modify storage luigis_mansion:data entity set value {room:71,spawn:3b,tags:["ghost_art_spawn"]}
execute positioned 692.8 29 78.1 run function luigis_mansion:spawn_entities/ghost/blue_twirler
data modify storage luigis_mansion:data entity set value {room:71,spawn:3b,tags:["ghost_art_spawn"]}
execute positioned 692.8 29 78.1 rotated -80 0 positioned ^0.7 ^ ^0.7 run function luigis_mansion:spawn_entities/ghost/blue_twirler
data modify storage luigis_mansion:data entity set value {room:71,spawn:3b,tags:["ghost_art_spawn"]}
execute positioned 692.8 29 78.1 rotated -80 0 positioned ^-0.7 ^ ^0.7 run function luigis_mansion:spawn_entities/ghost/blue_twirler
data modify storage luigis_mansion:data entity set value {room:71,spawn:3b,tags:["ghost_art_spawn"]}
execute positioned 692.8 29 78.1 rotated -80 0 positioned ^1.4 ^ ^0.5 run function luigis_mansion:spawn_entities/ghost/blue_twirler
data modify storage luigis_mansion:data entity set value {room:71,spawn:3b,tags:["ghost_art_spawn"]}
execute positioned 692.8 29 78.1 rotated -80 0 positioned ^-1.4 ^ ^0.5 run function luigis_mansion:spawn_entities/ghost/blue_twirler
scoreboard players set #the_artists_studio Wave 4
execute if data storage luigis_mansion:data current_state.current_data.technical_data{red_grabbing_ghost_easel:1b} run function luigis_mansion:room/hidden/the_artists_studio/wave_5