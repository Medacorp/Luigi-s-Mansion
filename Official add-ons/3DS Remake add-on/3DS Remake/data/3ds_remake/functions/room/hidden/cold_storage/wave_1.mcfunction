execute positioned 735 7 -1 rotated -90 0 run function luigis_mansion:spawn_entities/ice_spike
execute positioned 728 7 0 rotated -90 0 run function luigis_mansion:spawn_entities/ice_spike
execute positioned 730 7 3 rotated -90 0 run function luigis_mansion:spawn_entities/ice_spike
execute positioned 726 7 2 rotated -90 0 run function luigis_mansion:spawn_entities/ice_spike
execute positioned 737 7 4 rotated -90 0 run function luigis_mansion:spawn_entities/ice_spike
execute positioned 729 7 6 rotated -90 0 run function luigis_mansion:spawn_entities/ice_spike
execute positioned 732 7 9 rotated -90 0 run function luigis_mansion:spawn_entities/ice_spike
data modify storage luigis_mansion:data entity set value {scan_message:{sender:"me",message:'{"type":"translatable","translate":"luigis_mansion:message.sir_weston.scan"}'},affected_by:["fire"]}
execute positioned 724 2 9 rotated -135 0 run function luigis_mansion:spawn_entities/portrait_ghost/sir_weston
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["cold_storage_speedy_spirit"]} run function luigis_mansion:old_entities/speedy_spirit/give_money/green_emerald
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["cold_storage_speedy_spirit"]} run data modify storage luigis_mansion:data entity.loot.name set value "cold_storage_speedy_spirit"
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["cold_storage_speedy_spirit"]} positioned 725 2 -3 run function luigis_mansion:spawn_entities/ghost/speedy_spirit
scoreboard players set #cold_storage Wave 1