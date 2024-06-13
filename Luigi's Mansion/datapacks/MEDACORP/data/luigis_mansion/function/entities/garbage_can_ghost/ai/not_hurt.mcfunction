execute if entity @e[tag=exact_same_room,tag=!spectator,tag=player,distance=..0.7,limit=1] if entity @s[tag=!vanish,tag=!appear,tag=!attack] run function luigis_mansion:entities/garbage_can_ghost/collide with entity @s data.entity
tag @s[tag=!vanish,tag=!appear,tag=!attack,tag=!collided,tag=threw_banana] add vanish
execute if entity @s[tag=!collided,tag=!vanish,tag=!appear] run function luigis_mansion:entities/garbage_can_ghost/try_attack

execute if entity @s[tag=collided] run function luigis_mansion:entities/garbage_can_ghost/collided with entity @s data.entity
execute if entity @s[tag=vanish] run function luigis_mansion:entities/garbage_can_ghost/vanish with entity @s data.entity
execute if entity @s[tag=appear] run function luigis_mansion:entities/garbage_can_ghost/appear/normal with entity @s data.entity