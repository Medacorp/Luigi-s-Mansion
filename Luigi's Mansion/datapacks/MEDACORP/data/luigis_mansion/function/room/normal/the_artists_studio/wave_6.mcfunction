data modify storage luigis_mansion:data entity set value {room:71}
execute positioned 693 29 -68 run function luigis_mansion:spawn_entities/ghost/ghost_guy/red
data modify storage luigis_mansion:data entity set value {room:71}
execute positioned 693 29 -67 run function luigis_mansion:spawn_entities/ghost/ghost_guy/red
data modify storage luigis_mansion:data entity set value {room:71}
execute positioned 694 29 -69 run function luigis_mansion:spawn_entities/ghost/ghost_guy/red
scoreboard players set #the_artists_studio Wave 6
data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"ghost_gauntlet_spawn"},progress:0,room:71}