data modify storage luigis_mansion:data entity set value {room:71}
execute positioned 693 29 -65 run function luigis_mansion:spawn_entities/ghost/red_grabbing_ghost
data modify storage luigis_mansion:data entity set value {room:71}
execute positioned 693 29 -64 run function luigis_mansion:spawn_entities/ghost/red_grabbing_ghost
data modify storage luigis_mansion:data entity set value {room:71}
execute positioned 693 29 -66 run function luigis_mansion:spawn_entities/ghost/red_grabbing_ghost
scoreboard players set #the_artists_studio Wave 5
data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"ghost_gauntlet_spawn"},progress:0,room:71}