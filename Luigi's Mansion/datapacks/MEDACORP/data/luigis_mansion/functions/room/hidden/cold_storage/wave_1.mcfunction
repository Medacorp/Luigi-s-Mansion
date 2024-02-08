execute positioned 735 7 17 rotated -90 0 run function luigis_mansion:spawn_entities/ice_spike
execute positioned 728 7 16 rotated -90 0 run function luigis_mansion:spawn_entities/ice_spike
execute positioned 730 7 12 rotated -90 0 run function luigis_mansion:spawn_entities/ice_spike
execute positioned 726 7 13 rotated -90 0 run function luigis_mansion:spawn_entities/ice_spike
execute positioned 737 7 11 rotated -90 0 run function luigis_mansion:spawn_entities/ice_spike
execute positioned 729 7 9 rotated -90 0 run function luigis_mansion:spawn_entities/ice_spike
execute positioned 732 7 6 rotated -90 0 run function luigis_mansion:spawn_entities/ice_spike
data modify storage luigis_mansion:data entity set value {scan_message:{sender:"me",message:'{"type":"translatable","translate":"luigis_mansion:message.sir_weston.scan"}'},affected_by:["fire"]}
execute positioned 724 2 6 rotated -45 0 run function luigis_mansion:spawn_entities/portrait_ghost/sir_weston
scoreboard players set #cold_storage Wave 1