execute positioned 735 7 17 run function luigis_mansion:spawn_entities/ice_spike
execute positioned 728 7 16 run function luigis_mansion:spawn_entities/ice_spike
execute positioned 730 7 12 run function luigis_mansion:spawn_entities/ice_spike
execute positioned 726 7 13 run function luigis_mansion:spawn_entities/ice_spike
execute positioned 737 7 11 run function luigis_mansion:spawn_entities/ice_spike
execute positioned 729 7 9 run function luigis_mansion:spawn_entities/ice_spike
execute positioned 732 7 6 run function luigis_mansion:spawn_entities/ice_spike
data modify storage luigis_mansion:data entity set value {scan_message:{sender:"me",message:'{"translate":"luigis_mansion:message.sir_weston.scan"}'}}
execute positioned 724 2 6 rotated -45 0 run function luigis_mansion:spawn_entities/portrait_ghost/sir_weston
scoreboard players set #cold_storage Wave 1