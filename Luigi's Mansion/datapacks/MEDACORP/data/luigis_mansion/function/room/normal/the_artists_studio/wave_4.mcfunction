data modify storage luigis_mansion:data entity set value {room:71}
execute positioned 694 29 -62 run function luigis_mansion:spawn_entities/ghost/blue_twirler
data modify storage luigis_mansion:data entity set value {room:71}
execute positioned 695 29 -61 run function luigis_mansion:spawn_entities/ghost/blue_twirler
data modify storage luigis_mansion:data entity set value {room:71}
execute positioned 694 29 -63 run function luigis_mansion:spawn_entities/ghost/blue_twirler
scoreboard players set #the_artists_studio Wave 4
data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"ghost_gauntlet_spawn"},progress:0,room:71}