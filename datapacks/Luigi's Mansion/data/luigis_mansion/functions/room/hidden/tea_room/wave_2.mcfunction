execute positioned 640 20 61.0 run function luigis_mansion:spawn_entities/ghost/flash
execute positioned 646 20 61.0 run function luigis_mansion:spawn_entities/ghost/flash
execute positioned 640 20 73 run function luigis_mansion:spawn_entities/ghost/ghost_guy/red
execute positioned 646 20 73 run function luigis_mansion:spawn_entities/ghost/ghost_guy/green
tag @e[x=646.5,y=20,z=73.5,distance=..0.7,tag=ghost_guy] add spin_attack
execute positioned 640 20 48 run function luigis_mansion:spawn_entities/ghost/ghost_guy/red
execute positioned 646 20 48 run function luigis_mansion:spawn_entities/ghost/ghost_guy/green
tag @e[x=646.5,y=20,z=48.5,distance=..0.7,tag=ghost_guy] add spin_attack
scoreboard players set #tea_room Wave 2