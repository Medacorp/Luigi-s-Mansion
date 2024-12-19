execute at @s[tag=look_at_player] facing entity @e[tag=same_room,tag=luigi,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
tag @s[tag=!talk] remove talk_this_tick
tag @s remove talk