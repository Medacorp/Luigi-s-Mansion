execute if entity @e[tag=exact_same_room,tag=!spectator,tag=player,distance=..0.7,limit=1] if entity @s[tag=!vanish,tag=!appear] run function luigis_mansion:entities/ceiling_surprise/collide with entity @s data.entity
execute if entity @s[tag=!collided,tag=!vanish,tag=!appear] run function luigis_mansion:entities/ceiling_surprise/try_attack

execute if entity @s[tag=!attack,tag=!collided,tag=!vanish,tag=!laugh,tag=!complain,tag=!appear] run function luigis_mansion:entities/ceiling_surprise/haunt
execute if entity @s[tag=!attack,tag=!collided,tag=laugh] run function luigis_mansion:entities/ceiling_surprise/laugh with entity @s data.entity
execute if entity @s[tag=!attack,tag=!collided,tag=complain] run function luigis_mansion:entities/ceiling_surprise/complain with entity @s data.entity
execute if entity @s[tag=vanish] run function luigis_mansion:entities/ceiling_surprise/vanish with entity @s data.entity
execute if entity @s[tag=appear] run function luigis_mansion:entities/ceiling_surprise/appear/normal with entity @s data.entity