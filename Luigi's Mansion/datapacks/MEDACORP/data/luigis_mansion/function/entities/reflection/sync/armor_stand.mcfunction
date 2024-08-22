$data merge entity @s $(data)

execute if entity @s[tag=!immobile] run function luigis_mansion:entities/reflection/mobile_entity

execute at @s rotated ~ 0 if block ^ ^ ^0.1 minecraft:black_concrete run data merge entity @s {ArmorItems:[],HandItems:[]}
execute at @s rotated ~ 0 if block ^ ^ ^0.1 minecraft:black_concrete run tag @s[tag=immobile] add static