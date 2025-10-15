data modify storage luigis_mansion:data entity set value {room:71,spawn:3b,tags:["ghost_art_spawn"]}
execute positioned 693 29 -59.8 run function luigis_mansion:spawn_entities/ghost/purple_puncher
data modify storage luigis_mansion:data entity set value {room:71,spawn:3b,tags:["ghost_art_spawn"]}
execute positioned 693 29 -59.8 rotated -110 0 positioned ^0.7 ^ ^0.7 run function luigis_mansion:spawn_entities/ghost/purple_puncher
data modify storage luigis_mansion:data entity set value {room:71,spawn:3b,tags:["ghost_art_spawn"]}
execute positioned 693 29 -59.8 rotated -110 0 positioned ^-0.7 ^ ^0.7 run function luigis_mansion:spawn_entities/ghost/purple_puncher
data modify storage luigis_mansion:data entity set value {room:71,spawn:3b,tags:["ghost_art_spawn"]}
execute positioned 693 29 -59.8 rotated -110 0 positioned ^1.4 ^ ^0.5 run function luigis_mansion:spawn_entities/ghost/purple_puncher
data modify storage luigis_mansion:data entity set value {room:71,spawn:3b,tags:["ghost_art_spawn"]}
execute positioned 693 29 -59.8 rotated -110 0 positioned ^-1.4 ^ ^0.5 run function luigis_mansion:spawn_entities/ghost/purple_puncher
scoreboard players set #the_artists_studio Wave 3
execute if data storage luigis_mansion:data current_state.current_data.technical_data{blue_twirler_easel:1b} run function 3ds_remake:room/hidden/the_artists_studio/wave_4