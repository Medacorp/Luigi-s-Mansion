execute if entity @s[tag=!laugh,tag=!complain,tag=!grab_ball,tag=grabbed_ball] run function luigis_mansion:entities/bowling_ghost/ai/line_of_sight
execute if entity @s[tag=grab_ball] run function luigis_mansion:entities/bowling_ghost/attack/grab_bowling_ball
execute if entity @s[tag=attack] run function luigis_mansion:entities/bowling_ghost/attack/throw_bowling_ball
scoreboard players reset #temp Steps