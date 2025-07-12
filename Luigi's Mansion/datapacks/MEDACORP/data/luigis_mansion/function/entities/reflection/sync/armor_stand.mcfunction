data modify entity @s {} merge from storage luigis_mansion:data mirror.data

execute if entity @s[tag=!immobile] run function luigis_mansion:entities/reflection/mobile_entity

execute at @s rotated ~ 0 if block ^ ^ ^0.1 minecraft:black_concrete run data remove entity @s equipment
execute at @s rotated ~ 0 if block ^ ^ ^0.1 minecraft:black_concrete run tag @s[tag=immobile] add static
tag @s remove force_sync