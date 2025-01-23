data modify storage luigis_mansion:data entity set value {room:71}
execute positioned 694 29 -70 run function luigis_mansion:spawn_entities/ghost/garbage_can_ghost
data modify storage luigis_mansion:data entity set value {room:71}
execute positioned 694 29 -69 run function luigis_mansion:spawn_entities/ghost/garbage_can_ghost
data modify storage luigis_mansion:data entity set value {room:71}
execute positioned 695 29 -71 run function luigis_mansion:spawn_entities/ghost/garbage_can_ghost
scoreboard players set #the_artists_studio Wave 7
data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"ghost_gauntlet_spawn"},progress:0,room:71}