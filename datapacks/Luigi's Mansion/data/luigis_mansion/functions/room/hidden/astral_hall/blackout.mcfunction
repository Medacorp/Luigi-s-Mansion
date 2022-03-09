execute positioned 664 20 90 run function luigis_mansion:spawn_entities/ghost/can_spawn_now/ghost_guy/red
execute positioned 668 20 90 run function luigis_mansion:spawn_entities/ghost/can_spawn_now/ghost_guy/green
tag @e[x=668.5,y=20,z=90.5,distance=..0.7,tag=ghost_guy] add spin_attack
execute positioned 666 20 95 run function luigis_mansion:spawn_entities/ghost/can_spawn_now/ghost_guy/green
tag @e[x=666.5,y=20,z=95.5,distance=..0.7,tag=ghost_guy] add spin_attack
execute positioned 666 20 99 run function luigis_mansion:spawn_entities/ghost/can_spawn_now/ghost_guy/red
execute positioned 664 20 104 run function luigis_mansion:spawn_entities/ghost/can_spawn_now/ghost_guy/green
tag @e[x=664.5,y=20,z=104.5,distance=..0.7,tag=ghost_guy] add spin_attack
execute positioned 668 20 104 run function luigis_mansion:spawn_entities/ghost/can_spawn_now/ghost_guy/red
scoreboard players set #astral_hall Wave 100