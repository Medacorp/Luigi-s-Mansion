function #luigis_mansion:entities/wool/path
execute at @s run function luigis_mansion:entities/wool/move_forward
execute at @s as @a[tag=same_room,tag=!spectator,scores={Invulnerable=0},distance=..0.7,limit=1] run function luigis_mansion:entities/player/knockback/medium