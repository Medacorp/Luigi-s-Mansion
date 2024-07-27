function luigis_mansion:entities/ghost/get_target
tag @s[tag=in_vacuum] add flee

data modify entity @s data.animation set value {namespace:"e3_demo",id:"bounce"}
execute at @s[tag=!flee] facing entity @e[tag=same_room,tag=!spectator,tag=player,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute at @s[tag=!flee,tag=move_up] rotated ~ 0 run function e3_demo:entities/shining_ghost/move_up
execute at @s[tag=!flee,tag=!move_up] rotated ~ 0 run function e3_demo:entities/shining_ghost/move_down
execute at @s run function luigis_mansion:entities/ghost/ai
tag @s remove flee

execute at @s[tag=!dead,tag=!removed_from_existence,tag=!in_vacuum] if entity @e[tag=same_room,tag=!spectator,tag=player,distance=..0.7,limit=1] run function e3_demo:entities/shining_ghost/collide with entity @s data.entity