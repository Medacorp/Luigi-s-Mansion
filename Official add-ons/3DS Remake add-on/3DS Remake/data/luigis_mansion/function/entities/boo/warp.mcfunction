execute if entity @s[tag=target_reached] store result score @s Room run data get entity @s data.boo_target.room
tag @s remove target_reached
$function $(namespace):entities/boo/warp/$(id)
data remove entity @s data.warp_options
execute if score #boo_amiibo Selected matches 1 unless data storage luigis_mansion:data current_state.luigis_mansion.current_data.tracking_boos[2] run function 3ds_remake:entities/boo/track