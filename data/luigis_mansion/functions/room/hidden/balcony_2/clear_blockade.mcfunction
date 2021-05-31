function luigis_mansion:room/hidden/balcony_2/remove_blockade
data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {cleared_area_4_blockade:1b}
execute unless entity @a[tag=blackout_lightning,limit=1] unless data storage luigis_mansion:data current_state.current_data.rooms.breaker_room{cleared:1b} run tag @a[limit=1,tag=!blackout] add blackout_lightning