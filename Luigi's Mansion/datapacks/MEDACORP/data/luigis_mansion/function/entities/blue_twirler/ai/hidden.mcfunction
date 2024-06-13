function luigis_mansion:entities/ghost/hidden/ai
data remove entity @s data.animation
tag @s[tag=!hidden,tag=basher] add visible
tag @s[tag=no_appear] remove appear