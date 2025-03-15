execute unless data entity @s data.animation run data modify entity @s data.animation set value {namespace:"luigis_mansion",id:"idle"}
execute if entity @s[tag=!freeze_animation] rotated ~ 0 run function luigis_mansion:animations/furniture/main
data remove entity @s data.initial_animation_progress