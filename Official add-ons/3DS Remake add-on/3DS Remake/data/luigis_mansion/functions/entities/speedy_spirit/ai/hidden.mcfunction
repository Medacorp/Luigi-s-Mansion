function luigis_mansion:entities/ghost/hidden/ai
data remove entity @s data.animation
tag @s[tag=!hidden,tag=basher] add visible
tag @s[tag=no_appear] remove appear
execute at @s[tag=new_ghost] if score #luigi_amiibo Selected matches 1 run function 3ds_remake:entities/speedy_spirit/glow