execute if entity @e[tag=exact_same_room,tag=!spectator,tag=player,distance=..0.7,limit=1] if entity @s[tag=!vanish,tag=!appear,tag=!grab_ball] run function luigis_mansion:entities/bowling_ghost/collide with entity @s data.entity
tag @s[tag=!collided,tag=!vanish,tag=!appear,tag=!laugh,tag=!complain,tag=!grabbed_ball] add grab_ball
execute if entity @s[tag=!collided,tag=!vanish,tag=!appear] run function luigis_mansion:entities/bowling_ghost/try_attack

execute if entity @s[tag=!attack,tag=!collided,tag=!vanish,tag=!appear,tag=!laugh,tag=!complain,tag=!grab_ball,tag=grabbed_ball] run function luigis_mansion:entities/bowling_ghost/haunt
execute if entity @s[tag=!attack,tag=!collided,tag=laugh] run function luigis_mansion:entities/bowling_ghost/laugh with entity @s data.entity
execute if entity @s[tag=!attack,tag=!collided,tag=complain] run function luigis_mansion:entities/bowling_ghost/complain with entity @s data.entity
execute if entity @s[tag=collided] run function luigis_mansion:entities/bowling_ghost/collided
execute if entity @s[tag=vanish] run function luigis_mansion:entities/bowling_ghost/vanish with entity @s data.entity
execute if entity @s[tag=appear] run function luigis_mansion:entities/bowling_ghost/appear/normal with entity @s data.entity