data modify storage luigis_mansion:data entity set value {room:71,scan_result:{namespace:"luigis_mansion",id:"scan/entity/vincent_van_gore"}}
execute positioned 701 29 88 rotated 0 0 run function luigis_mansion:spawn_entities/portrait_ghost/vincent_van_gore
tag @e[scores={Room=71},tag=furniture,tag=door] add blockade
scoreboard players set #the_artists_studio Wave 1