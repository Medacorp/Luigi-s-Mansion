data modify storage luigis_mansion:data entity set value {room:71,spawn:3b,tags:["ghost_art_spawn"]}
execute positioned 692 29 80 run function luigis_mansion:spawn_entities/ghost/red_grabbing_ghost
data modify storage luigis_mansion:data entity set value {room:71,spawn:3b,tags:["ghost_art_spawn"]}
execute positioned 692 29 80 rotated -90 0 positioned ^0.7 ^ ^0.7 run function luigis_mansion:spawn_entities/ghost/red_grabbing_ghost
data modify storage luigis_mansion:data entity set value {room:71,spawn:3b,tags:["ghost_art_spawn"]}
execute positioned 692 29 80 rotated -90 0 positioned ^-0.7 ^ ^0.7 run function luigis_mansion:spawn_entities/ghost/red_grabbing_ghost
data modify storage luigis_mansion:data entity set value {room:71,spawn:3b,tags:["ghost_art_spawn"]}
execute positioned 692 29 80 rotated -90 0 positioned ^1.4 ^ ^0.5 run function luigis_mansion:spawn_entities/ghost/red_grabbing_ghost
data modify storage luigis_mansion:data entity set value {room:71,spawn:3b,tags:["ghost_art_spawn"]}
execute positioned 692 29 80 rotated -90 0 positioned ^-1.4 ^ ^0.5 run function luigis_mansion:spawn_entities/ghost/red_grabbing_ghost
scoreboard players set #the_artists_studio Wave 5
execute if data storage luigis_mansion:data current_state.current_data.technical_data{ghost_guy_easel:1b} run function luigis_mansion:room/hidden/the_artists_studio/wave_6