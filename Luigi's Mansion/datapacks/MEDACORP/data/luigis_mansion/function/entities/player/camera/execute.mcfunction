execute at @s[tag=!separated_camera,tag=!spectator] run function luigis_mansion:entities/player/camera/separate
attribute @s minecraft:gravity base set 0
tag @s add reset_rotation
$execute $(execute) run teleport @s $(teleport)
execute at @s run function luigis_mansion:main/update_last_position