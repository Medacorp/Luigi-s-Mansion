data modify storage luigis_mansion:data entity set value {room:71,spawn:3b,tags:["ghost_art_spawn"]}
execute positioned 693 29 -69.2 run function luigis_mansion:spawn_entities/ghost/garbage_can_ghost
data modify storage luigis_mansion:data entity set value {room:71,spawn:3b,tags:["ghost_art_spawn"]}
execute positioned 693 29 -69.2 rotated -70 0 positioned ^0.7 ^ ^0.7 run function luigis_mansion:spawn_entities/ghost/garbage_can_ghost
data modify storage luigis_mansion:data entity set value {room:71,spawn:3b,tags:["ghost_art_spawn"]}
execute positioned 693 29 -69.2 rotated -70 0 positioned ^-0.7 ^ ^0.7 run function luigis_mansion:spawn_entities/ghost/garbage_can_ghost
scoreboard players set #the_artists_studio Wave 7
execute if data storage luigis_mansion:data current_state.current_data.technical_data{purple_bomber_easel:1b} run function luigis_mansion:room/normal/the_artists_studio/wave_8