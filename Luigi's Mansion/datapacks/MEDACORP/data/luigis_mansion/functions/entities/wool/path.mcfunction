function #luigis_mansion:entities/wool/path
execute at @s run function luigis_mansion:entities/wool/move_forward
execute at @s positioned ~ ~1.4 ~ as @a[tag=!spectator,scores={Invulnerable=0},distance=..0.7] run function luigis_mansion:entities/player/animation/set/knockback/medium