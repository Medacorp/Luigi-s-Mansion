execute if entity @s[tag=!laugh,tag=!complain,tag=!grab_ball,tag=!attack,tag=grabbed_ball] facing entity @a[tag=same_room] feet rotated ~ 0 run function luigis_mansion:entities/bowling_ghost/ai/line_of_sight
execute if entity @s[tag=grab_ball] run function luigis_mansion:entities/bowling_ghost/attack/grab_bowling_ball with entity @s data.entity
execute if entity @s[tag=attack] run function luigis_mansion:entities/bowling_ghost/attack/throw_bowling_ball with entity @s data.entity
scoreboard players reset #temp Steps