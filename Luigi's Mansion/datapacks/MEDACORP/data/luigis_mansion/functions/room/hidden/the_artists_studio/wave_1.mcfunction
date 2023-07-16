data modify storage luigis_mansion:data entity set value {scan_message:{sender:"me",message:'{"translate":"luigis_mansion:message.vincent_van_gore.scan"}',plural_message:'{"translate":"luigis_mansion:message.vincent_van_gore.scan.more"}'}}
execute positioned 701 29 88 rotated 0 0 run function luigis_mansion:spawn_entities/portrait_ghost/vincent_van_gore
tag @e[scores={Room=71},tag=door,tag=frame] add blockade
scoreboard players set #the_artists_studio Wave 1