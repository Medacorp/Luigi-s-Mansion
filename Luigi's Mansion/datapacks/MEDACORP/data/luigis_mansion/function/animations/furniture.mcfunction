execute unless data entity @s data.animation run data modify entity @s data.animation set value {namespace:"luigis_mansion",id:"idle"}
scoreboard players set @s[tag=dead,scores={ActionTime=-2}] ActionTime -3
scoreboard players set @s[tag=remove_from_existence,scores={ActionTime=-2}] ActionTime -3
execute at @s[tag=!freeze_animation] positioned ~ ~1.43875 ~ rotated ~ 0 run function luigis_mansion:animations/furniture/main
data remove entity @s data.initial_animation_progress