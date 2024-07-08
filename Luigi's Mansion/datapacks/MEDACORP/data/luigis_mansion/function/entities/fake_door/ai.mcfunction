function luigis_mansion:entities/ghost/get_target
tag @s remove vanish
tag @s remove disappear
execute if entity @s[tag=in_fire,tag=hurt_by_fire,tag=!burning_heart,tag=!watery_heart,tag=!hurt,tag=!appear,tag=!vanish] run function luigis_mansion:entities/ghost/hurt/fire
execute if entity @s[tag=element_hurt] run function luigis_mansion:entities/ghost/hurt/element
execute at @s[tag=!captured,tag=!dead] unless entity @s[scores={Health=1..}] unless entity @s[tag=!element_hurt,tag=!element_death] run function luigis_mansion:entities/fake_door/death
tag @s add visible

execute if entity @s[tag=element_hurt] run function luigis_mansion:entities/fake_door/burn
execute if entity @s[tag=element_hurt,tag=in_water] run function luigis_mansion:entities/fake_door/extinguish
execute if entity @s[tag=!element_hurt] run setblock ^ ^ ^0.5 minecraft:air
execute if entity @s[tag=try_open,tag=!attack] run function luigis_mansion:entities/fake_door/use
tag @s remove try_open

execute if entity @s[tag=attack] run function luigis_mansion:entities/fake_door/attack

execute unless entity @s[tag=!remove_from_existence,tag=!dead] run setblock ^ ^ ^0.5 minecraft:air