execute unless data storage luigis_mansion:data current_state.current_data.technical_data{observatory_destroyed:1b} run function luigis_mansion:room/hidden/observatory/destroy
data modify storage luigis_mansion:data entity set value {room:46}
execute positioned 647 26 104 run function luigis_mansion:spawn_entities/ghost/shining_ghost
scoreboard players set #observatory Wave 2