data modify storage luigis_mansion:data entity set value {scan_message:{sender:"me",message:'{"translate":"luigis_mansion:message.neville.scan"}',plural_message:'{"translate":"luigis_mansion:message.neville.scan.more"}'}}
execute positioned 709.0 20 57.0 rotated -125 0 run function luigis_mansion:spawn_entities/portrait_ghost/neville
tag @e[tag=neville] remove pearl_dropper
execute positioned 703 20 49 run function luigis_beta_mansion:spawn_entities/vacuumable/boo
execute positioned 703 20 49 run function luigis_beta_mansion:spawn_entities/vacuumable/boo
execute positioned 711 20 61 run function luigis_beta_mansion:spawn_entities/vacuumable/boo
execute positioned 711 20 61 run function luigis_beta_mansion:spawn_entities/vacuumable/boo
scoreboard players set #study Wave 1