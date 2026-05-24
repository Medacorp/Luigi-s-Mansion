execute if entity @s[tag=target_reached] store result score @s Room run data get entity @s data.boo_target.room
tag @s remove target_reached
$function $(namespace):entities/boo/warp/$(id)
data remove entity @s data.warp_options