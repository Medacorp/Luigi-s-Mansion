tag @s[tag=chauncey] add collision
tag @s[tag=bounced] add collision
tag @s[tag=boo] add remove_from_existence
execute store result entity @s Rotation[0] float -1 run data get entity @s Rotation[0]
execute at @s run teleport @s ~ ~ ~-0.1 ~-180 ~
tag @s add bounced
execute if entity @s[tag=!spike_ball] run playsound luigis_mansion:entity.ball.bounce neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=spike_ball] run playsound luigis_mansion:entity.ball.bounce_spike neutral @a[tag=same_room] ~ ~ ~ 1