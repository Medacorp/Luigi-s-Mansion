data modify storage luigis_mansion:data entity set value {scan_message:{sender:"me",message:'{"translate":"luigis_mansion:message.nana.scan"}',plural_message:'{"translate":"luigis_mansion:message.nana.scan.more"}'}}
execute positioned 657 20 -10.0 rotated -60 0 run function luigis_mansion:spawn_entities/portrait_ghost/nana
execute positioned 659.7 21.5 -11.7 run function luigis_mansion:spawn_entities/ball/wool/pink
execute positioned 659.3 21.5 -11.7 run function luigis_mansion:spawn_entities/ball/wool/blue
execute positioned 659 21.5 -11.3 run function luigis_mansion:spawn_entities/ball/wool/yellow
scoreboard players set #nanas_room Wave 1