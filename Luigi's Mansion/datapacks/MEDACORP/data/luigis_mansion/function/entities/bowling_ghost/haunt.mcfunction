data modify entity @s data.animation set value {namespace:"luigis_mansion",id:"look"}
execute at @s facing entity @e[tag=target,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ 0
execute unless score #mirrored Selected matches 1 run function luigis_mansion:entities/bowling_ghost/ball_position/haunt/normal
execute if score #mirrored Selected matches 1 run function luigis_mansion:entities/bowling_ghost/ball_position/haunt/mirrored