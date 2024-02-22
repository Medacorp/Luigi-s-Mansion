data modify storage luigis_mansion:data entity set value {mansion:{namespace:"luigis_mansion",id:"normal"},scan_message:{sender:"me",message:'{"type":"translatable","translate":"luigis_mansion:message.vincent_van_gore.scan"}',plural_message:'{"type":"translatable","translate":"luigis_mansion:message.vincent_van_gore.scan.more"}'}}
execute positioned 701 29 -73 rotated -180 0 run function luigis_mansion:spawn_entities/portrait_ghost/vincent_van_gore
tag @e[scores={Room=71},tag=furniture,tag=door] add blockade
scoreboard players set #the_artists_studio Wave 1