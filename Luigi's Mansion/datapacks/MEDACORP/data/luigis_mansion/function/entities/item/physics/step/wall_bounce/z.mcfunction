execute store result entity @s Rotation[0] float -0.01 run data get entity @s Rotation[0] 100
execute at @s run teleport @s ~ ~ ~ ~-180 ~
execute if entity @s[tag=!bounced_already] run function luigis_mansion:entities/item/bounce_sound with entity @s data.item